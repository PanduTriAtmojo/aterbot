module.exports = {
  apps: [{
    name: 'my-app',
    script: 'ts-node',
    args: './src/index.ts',
    interpreter: './node_modules/.bin/ts-node',
    watch: true,
    ignore_watch: ['node_modules'],
    exec_mode: 'fork',
    max_memory_restart: '1G',
    autorestart: true,
    log_date_format: 'YYYY-MM-DD HH:mm:ss Z',
    out_file: './logs/out.log',
    error_file: './logs/error.log',
  }],
};
