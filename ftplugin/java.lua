local ok, jdtls = pcall(require, "jdtls")

if not ok then
    vim.notify("No se pudo cargar nvim-jdtls", vim.log.levels.ERROR)
    return
end

local root_dir = vim.fs.root(0, {
    "pom.xml",
    "build.gradle",
    "build.gradle.kts",
    "mvnw",
    "mvnw.cmd",
    "gradlew",
    "gradlew.bat",
    ".git",
})

if not root_dir then
    vim.notify("No se encontró la raíz de un proyecto Java", vim.log.levels.WARN)
    return
end

local jdtls_executable = vim.fn.exepath("jdtls")

if jdtls_executable == "" then
    vim.notify(
        "JDTLS no está instalado. Ejecuta :MasonInstall jdtls",
        vim.log.levels.ERROR
    )
    return
end

local project_name = vim.fs.basename(root_dir)
local project_hash = vim.fn.sha256(root_dir):sub(1, 12)
local workspace_dir = vim.fs.joinpath(
    vim.fn.stdpath("data"),
    "jdtls-workspaces",
    project_name .. "-" .. project_hash
)

local lombok_jar = vim.fs.joinpath(
    vim.fn.stdpath("data"),
    "mason",
    "share",
    "jdtls",
    "lombok.jar"
)

local cmd = {
    jdtls_executable,
    "-data",
    workspace_dir,
}

if vim.uv.fs_stat(lombok_jar) then
    table.insert(cmd, 2, "--jvm-arg=-javaagent:" .. lombok_jar)
else
    vim.notify("No se encontró lombok.jar en Mason", vim.log.levels.WARN)
end

local config = {
    cmd = cmd,
    root_dir = root_dir,
    capabilities = require("cmp_nvim_lsp").default_capabilities(),

    settings = {
        java = {
            eclipse = {
                downloadSources = true,
            },
            maven = {
                downloadSources = true,
            },
            configuration = {
                updateBuildConfiguration = "automatic",
            },
            signatureHelp = {
                enabled = true,
            },
            completion = {
                importOrder = {
                    "java",
                    "javax",
                    "com",
                    "org",
                },
            },
        },
    },

    init_options = {
        bundles = {},
    },
}

vim.keymap.set("n", "<leader>jo", jdtls.organize_imports, {
    buffer = true,
    desc = "Java: organizar imports",
})

jdtls.start_or_attach(config)
