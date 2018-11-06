# CloudFormation + API Gateway Useless Machine
![Useless Machine](https://github.com/tomislacker/api-gateway-useless-machine/raw/master/useless-machine.gif)

## About
You know those shitty little boxes that basically do nothing? Yea, like that
one featured above. Well this is a one of those but a little more high tech.
It employs [CloudFormation] to stand up a [Lambda]-powered [API Gateway] to do
a similar thing.

Basically you stand up this stack, visit the URL, and the stack tears itself
back down again.

## Usage
```sh
$ make

Waiting for changeset to be created..
Waiting for stack create/update to complete
Successfully created/updated stack - useless-machine-1541549923

Navigate to:
https://z7dci24jb0.execute-api.us-east-1.amazonaws.com/useless/
```

[API Gateway]: https://aws.amazon.com/api-gateway/ "Amazon API Gateway"
[CloudFormation]: https://aws.amazon.com/cloudformation/ "AWS CloudFormation"
[Lambda]: https://aws.amazon.com/lambda/ "AWS Lambda"
