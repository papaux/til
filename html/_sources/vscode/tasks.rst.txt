Tasks
------

Standard shell based task::

    {
        "label": "make",
        "type": "shell",
        "command": "make",
        "args": [
            "-j4",
            "html"
        ],
        "problemMatcher": [],
    }

Define the default build task (executed with ``ctrl+maj+b``), add this to the task definition::

    "group": {
        "kind": "build",
        "isDefault": true
    }

Task dependencies to run another task before::

    "dependsOn": [
        "make"
    ],

Load a python venv automatically before all tasks::

    {
        "linux": {
            "options": {
                "shell": {
                    "executable": "bash",
                    "args": [
                        "--init-file",
                        "venv/bin/activate",
                        "-ci",
                    ]
                }
            },
        },
        "tasks": [
            ...
        ]
    }

