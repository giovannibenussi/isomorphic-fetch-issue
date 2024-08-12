## Reproduce the issue

Install dependencies and run the development server:

```bash
npm i
npm run dev

# create, seed database, and see connection details
sh ./setup.sh
```

The run 

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

To reproduce the issue, you need to update the `package.json` file with the following overrides:

```json
// This fails
"overrides": {
    "@libsql/isomorphic-fetch": "0.2.4"
}

// This works
"overrides": {
    "@libsql/isomorphic-fetch": "0.2.4"
}
```

Remember to kill the server, install the dependencies, and run the development server again to reproduce the issue.
