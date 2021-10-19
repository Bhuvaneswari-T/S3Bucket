# Amazon EventBridge JavaScript SDK v2 code examples
## Purpose
The code examples in this directory demonstrate how to work with the Amazon EventBridge
using the AWS SDK for JavaScript v2.

Amazon EventBridge (formerly Amazon CloudWatch Events) is a serverless event bus service that you 
can use to connect your applications with data from a variety of sources.
## Code examples
This is a workspace where you can find the following AWS SDK for JavaScript version 2 (v2) Amazon Cloudwatch examples:

- [Put CloudWatch events](./cwe_putevents.js)
- [Put CloudWatch event rule](./cwe_putRule.js)
- [Put CloudWatch event targets](./cwe_putTargets.js)

## Important
- As an AWS best practice, grant this code least privilege, or only the 
  permissions required to perform a task. For more information, see 
  [Grant least privilege](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#grant-least-privilege) 
  in the *AWS Identity and Access Management User Guide*.
- This code has not been tested in all AWS Regions. Some AWS services are 
  available only in specific AWS Regions. For more information, see the 
  [AWS Regional Services List](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/)
  on the AWS website.
- Running this code might result in charges to your AWS account.

## Running the code

### Prerequisites
- An AWS account. To create an account, see [How do I create and activate a new AWS account](https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/) on the AWS Premium Support website.
- AWS credentials. For details, see  [Setting credentials in Node.js](https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-credentials-node.html) in the 
  *AWS SDK for Javascript (v2) Developer Guide*.
- The AWS SDK for JavaScript (v2). For AWS SDK for JavaScript download and installation instructions, see 
  [Installing the AWS SDK for JavaScript](https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/installing-jssdk.html) in the 
  *AWS SDK for JavaScript (v2) Developer Guide*.

Most of these code example files can be run with very little to no modification. For example, to use Node.js 
to run the `cwl_deletesubscriptionfilter.js` file, replace the hard-coded values in the file with your own values, save the file, and then run the file. For example:

```
node cwl_deletesubscriptionfilter.js
```

Most of these files have been refactored into reusable functions that can be copied into your own code. You can then call those functions directly from your own code without modifying the copied function code itself. For example, you could copy the `alarm_created_or_updated?` function code from the `cw-ruby-example-create-alarm.rb` file into your own code. You could then adapt the code in the `run_me` function in that same file as a basis to write your own code to call the copied `alarm_created_or_updated?` function.


## Resources
 
- [AWS SDK for JavaScript v2 Developer Guide](https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/cloudwatch-examples.html)