# INFRASTRUCTURE AS CODE (CLOUDFORMATION)

## CloudFormation Physical & Logical Resources (7:30)

![Alt text](<images/Screenshot from 2023-10-13 10-10-03.png>)
Physical Resource / Logical Resource - Template - Stack

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/Physical-and-Logical-Resources-1.png)
CloudFormation - Architecture

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/Physical-and-Logical-Resources-2.png)
CloudFormation - Stack Create/Update/Delete

## [_DEMO_] Simple Non Portable Template - PART1 (10:28)

## [_DEMO_] Simple Non Portable Template - PART2 (11:28)

## CloudFormation Template and Pseudo Parameters (6:53)

![Alt text](<images/Screenshot from 2023-10-13 12-02-24.png>)
Template/Pseudo Parameters - Overview

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/TemplateParameters-1.png)
Template Parameters - Input for Cfn Template

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/PseudoParameters-1.png)
[Pseudo Parameters](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/pseudo-parameter-reference.html) - Provided by AWS based on the **Stack** environment

```mermaid
mindmap
  Parameters used in Cfn Template
    Template **Parameter**
    _Pseudo_ Parameter
    _Public_ Parameter<br/>from AWS Systems Manager Parameter Store
```

> [!NOTE] What are the difference between _Cfn - **Pseudo Parameters**_ and _AWS Systems Manager - **public parameters**_
>
> - _Cfn - **Pseudo Parameters**_: Parameters predefined by AWS CloudFormation
>
>   e.g.
>
>   - `AWS::AccountId`
>   - `AWS::Region`
>   - `AWS::StackId`
>   - `AWS::StackName`
>
>   See [Pseudo parameters reference - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/pseudo-parameter-reference.html)
>
> - _AWS Systems Manager Parameter Store - **public parameters**_: Common artifacts published by some AWS services:
>
>   e.g.
>
>   - EC2: Information about AMIs:
>     - `ami-amazon-linux-latest`
>     - `ami-windows-latest`
>   - ECS: `/aws/service/ecs/optimized-ami/amazon-linux-2/recommended`
>   - EKS: `/aws/service/eks/optimized-ami/1.14/amazon-linux-2/recommended`
>   - AWS:
>     - Services
>     - Regions
>     - Availability Zone
>     - ...
>
>   See
>
>   - [Discovering public parameters in Parameter Store - AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-finding-public-parameters.html)
>   - [Reference existing resources and Systems Manager parameters with CloudFormation-supplied parameter types - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-supplied-parameter-types.html#systems-manager-parameter-types-supported)

## CloudFormation Intrinsic Functions (14:28)

![Alt text](<images/Screenshot from 2023-10-13 12-30-38.png>)
Cfn - [Intrinsic Functions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html)

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-1.png)
Cfn Intrinsic Functions: `Ref` & `Fn::GetAtt`

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-2.png)
Cfn Intrinsic Functions: `Fn:GetAZs` & `Fn:Select`

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-3.png)
Cfn Intrinsic Functions: `Fn:Join` & `Fn:Split`

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-4.png)
Cfn Intrinsic Functions: `Fn:Base64` & `Fn:Sub`

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-5.png)
Cfn Intrinsic Functions: `Fn:Cidr`

> [!NOTE]
>
> | Function     | YAML Syntax (Short form)                                  | Example usage                                        | Return                                             |
> | ------------ | --------------------------------------------------------- | ---------------------------------------------------- | -------------------------------------------------- |
> | `Ref`        | `!Ref logicalName`                                        | `!Ref MyInstance`                                    | `i-123456789`[^1]                                  |
> | `Fn::GetAtt` | `!GetAtt logicalNameOfResource.attributeName`             | `!GetAtt MyInstance.PublicIp`                        | `ec2-1.2.3.4.compute-1.amazonaws.com`[^2]          |
> | `Fn::GetAZs` | `!GetAZs region`                                          | `!GetAZs ''`                                         | `[ "us-east-1a", "us-east-1b", "us-east-1c" ]`[^3] |
> | `Fn::Select` | `!Select [ index, listOfObjects ]`                        | `!Select [ "0", [ "apples", "grapes", "oranges" ] ]` | `"apples"`[^4]                                     |
> |              |                                                           | `!Select [ "0", !GetAZs '' ]`                        | `"us-east-1a"`                                     |
> | `Fn::Join`   | `!Join [ delimiter, [ comma-delimited list of values ] ]` | `!Join [ ":", [ a, b, c ] ]`                         | `"a:b:c"`                                          |
> | `Fn::Split`  | `!Split [ delimiter, source string ]`                     | `!Split [ ":" , "a:b:c" ]`                           | `[ a, b, c ]`                                      |
> | `Fn::Base64` | `!Base64 valueToEncode`                                   | `!Base64 AWS CloudFormation`                         | `QVdTIENsb3VkRm9ybWF0aW9u`[^5]                     |
> | `Fn::Sub`    | `!Sub String`                                             | `!Sub "SSH security group for ${AWS::StackName}"`    | `"SSH security group for STACK_NAME"`              |
> | `Fn::Cidr`   | `!Cidr [ ipBlock, count, cidrBits ]`                      | `!Cidr [ "10.16.0.0/16", 16, 12 ]`                   | 16 CIDRs with a subnet mask `/20`                  |
> |              |                                                           |                                                      |                                                    |
> |              | <div style="width:450px"/>                                | <div style="width:400px"/>                           | <div style="width:400px"/>                         |

> [!NOTE]
>
> | Function     |                            | YAML Syntax                                                           |
> | ------------ | -------------------------- | --------------------------------------------------------------------- |
> | `Ref`        | Short form                 | `!Ref logicalName`                                                    |
> |              | Full form                  | `Ref: logicalName`[^6]                                                |
> |              |                            |                                                                       |
> | `Fn::GetAtt` | Short form                 | `!GetAtt logicalNameOfResource.attributeName`                         |
> |              | Full form                  | `Fn::GetAtt: [ logicalNameOfResource, attributeName ]`                |
> |              |                            |                                                                       |
> | `Fn::GetAZs` | Short form                 | `!GetAZs region`                                                      |
> |              | Full form                  | `Fn::GetAZs: region`                                                  |
> |              |                            |                                                                       |
> | `Fn::Select` | Short form                 | `!Select [ index, listOfObjects ]`                                    |
> |              | Full form                  | `Fn::Select: [ index, listOfObjects ]`                                |
> |              |                            |                                                                       |
> | `Fn::Join`   | Short form                 | `!Join [ delimiter, [ comma-delimited list of values ] ]`             |
> |              | Full form                  | `Fn::Join: [ delimiter, [ comma-delimited list of values ] ]`         |
> |              |                            |                                                                       |
> | `Fn::Split`  | Short form                 | `!Split [ delimiter, source string ]`                                 |
> |              | Full form                  | `Fn::Split: [ delimiter, source string ]`                             |
> |              |                            |                                                                       |
> | `Fn::Base64` | Short form                 | `!Base64 valueToEncode`                                               |
> |              | Full form                  | `Fn::Base64: valueToEncode`                                           |
> |              |                            | `Fn::Base64:`<br/>`  !Sub string`                                     |
> |              |                            |                                                                       |
> | `Fn::Sub`    | Short form                 | `!Sub String`                                                         |
> |              | Full form                  | `Fn::Sub: String`                                                     |
> |              |                            |                                                                       |
> | `Fn::Cidr`   | Short form                 | `!Cidr [ ipBlock, count, cidrBits ]`                                  |
> |              | Full form                  | `Fn::Cidr:`<br/>`  - ipBlock`<br/>`  - count`<br/>`  - cidrBits`<br/> |
> |              |                            |                                                                       |
> |              | <div style="width:100px"/> | <div style="width:500px"/>                                            |

> [!TIP] How to remember Full form and short form?
>
> - `Full form `: `Fn::FunctionName:`
> - `Short form`: `!   FunctionName `

See [Intrinsic function reference - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html)

## CloudFormation Mappings (4:30)

![Alt text](<images/Screenshot from 2023-10-13 13-11-21.png>)
Cfn Mappings (Template): [`Mappings` section](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html)

> [!NOTE] Mappings and key level
>
> The `Mappings` section can have multiple mappings.
>
> - Each mapping is a `key` of the `Mappings` section.
> - Each mapping can have 2 level of keys.

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationMappings.png)
Cfn Mappings: [`Fn::FindInMap`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html)

> [!NOTE] FindInMap syntax
>
> | Function        |            | YAML Syntax                                               |
> | --------------- | ---------- | --------------------------------------------------------- |
> | `Fn::FindInMap` | Short form | `!FindInMap [ MapName, TopLevelKey, SecondLevelKey ]`     |
> |                 | Long form  | `Fn::FindInMap: [ MapName, TopLevelKey, SecondLevelKey ]` |
> |                 |            | <div style="width:500px"/>                                |

## CloudFormation Outputs (3:37)

![Alt text](<images/Screenshot from 2023-10-13 13-22-47.png>)
Cfn [Outputs (Template)](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html): Views in CLI/Console - Used by parent-stack, cross-stack

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationOutputs.png)
Cfn Outputs: Example

## [_DEMO_] Template v2 - Portable (13:34)

## CloudFormation Conditions (7:24)

![Alt text](<images/Screenshot from 2023-10-13 14-37-36.png>)
Cfn Conditions (Template): Only create resources if conditions meet

> [!NOTE] How Cfn Condition work?
> You
>
> - create a condition in the `Conditions` section
> - associate that condition to logical resources
>   - to control if they are created or not

> [!NOTE] Why use Cfn Condition?
>
> With Cfn Condition, you can reuse a template that can create resources in different contexts.
>
> e.g. a `test` environment versus a `production` environment

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationConditions.png)
Cfn Conditions: Example

## CloudFormation DependsOn (7:14)

![Alt text](<images/Screenshot from 2023-10-13 14-52-57.png>)
Cfn [DependsOn (Resource)](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html): Explicitly define resources dependency order

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationDependsOn.png)
Cfn DependsOn: Example

## CloudFormation Wait Conditions, CreationPolicy & cfn-signal (11:52)

![Alt text](<images/Screenshot from 2023-10-13 15-00-58.png>)
Cfn Provisioning - How do Cfn know that a resource successfully created/update?

> [!NOTE]
>
> By default, Cfn don't wait for the resources to be configured/bootstrap and be ready to used.
>
> 👉 The stack creation/updating will be finished before all of its resources are ready to used.

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationWaitConditions.png)
Cfn [Wait Conditions (Template)](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-waitcondition.html): Tell Cfn to pause the creation of a stack and wait for a signal before it continues to create the stack

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCreationPolicy.png)
Cfn [Creation Policy (Resource)](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html): Tell Cfn to wait on resource configuration actions before stack creation proceeds.

> [!NOTE] When to use Wait Conditions & Create Policy?
> You
>
> - Create Policy for EC2 and ASG or simple use cases (most situations)
> - Wait Conditions in advance use cases.

![Alt text](<images/Screenshot from 2023-10-13 15-03-40.png>)
[cfn-signal](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-signal.html): Signals CloudFormation to indicate whether Amazon EC2 instances have been successfully created/updated

## CloudFormation Nested Stacks (13:55)

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationNestedStacks-1.png)
Single Stack - The Problem

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationNestedStacks-2.png)
Cfn [Nested Stack](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html): Stacks created as part of other stacks 👈️ Allow reusing template (code)

> [!NOTE] `Nested Stack`, `Root Stack`, `Parent Stack`?
>
> - _Nested Stack_: Stacks created as **part of other stacks**.
> - _Root Stack_: The **top-level stack** to which all the _nested stacks_ ultimately belong.
> - _Parent Stack_: Each nested stack has an immediate _parent stack_.
>
>   ![Alt text](images/cfn-nested-stacks.png)

![Alt text](<images/Screenshot from 2023-10-13 16-01-27.png>)
Cfn Nested Stacks - When?

> [!NOTE] How are lifecycle of nested stacks?
>
> The root stacks and all of its nested stacks share the same lifecycle.

## CloudFormation Cross-Stack References (10:05)

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCrossStackReferences-1.png)
Cfn Stacks are isolated and self-contained

![Alt text](<images/Screenshot from 2023-10-13 16-23-04.png>)
Cfn `Outputs` `Export`: Make a stack visible to other stacks ([Cross-Stack References](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/walkthrough-crossstackref.html))

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCrossStackReferences-2.png)
Cfn Cross-Stack References - `Fn::ImportValue:` Import another stack's Outputs Export

## CloudFormation Deletion Policy (5:24)

![Alt text](<images/Screenshot from 2023-10-13 20-47-57.png>)
Cfn DeletionPolicy - What happen to physical resource when its logical resource deleted?

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationDeletionPolicy.png)
Cfn DeletionPolicy - Delete (Default) / Retain / Snapshot (If supported)

## CloudFormation Stack Sets (9:12)

![Alt text](<images/Screenshot from 2023-10-13 20-21-11.png>)
Cfn StackSets - [Concepts](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/what-is-cfnstacksets.html)

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationStackSets.png)
Cfn StackSets - Architecture

![Alt text](<images/Screenshot from 2023-10-13 20-25-45.png>)
Cfn StackSets - Key Points

## CloudFormation Stack Roles (6:47)

![Alt text](<images/Screenshot from 2023-10-13 20-59-08.png>)
Cfn Stack Roles - Overview

> [!NOTE] The identity creating the stack doesn't need permissions for resources.
>
> It only needs permissions for:
>
> - creating the stack
> - `PassRole` to give Cfn the role with permissions for creating resources.

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationStackRoles.png)
Cfn Stack Roles - Example

## CloudFormation Init (cfn-init) (8:48)

![Alt text](<images/Screenshot from 2023-10-13 21-13-38.png>)
[cfn-init](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-init.html): Overview

> [!NOTE] AWS::CloudFormation::Init vs cfn-init?
>
> - `AWS::CloudFormation::Init`: a part of the logical resource for EC2 (`Metadata` key)
> - `cfn-init`: a helper script in the `Properties`'s `UserData`, will run by the EC2 instance

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationInit-and-Cfninit.png)
cfn-init: **config keys** - _configsets_

See:

- [AWS::CloudFormation::Init - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-init.html#aws-resource-init-configsets)
- [cfn-init - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-init.html)

## CloudFormation cfn-hup (4:13)

![Alt text](<images/Screenshot from 2023-10-14 00-49-29.png>)
cfn-init: The problem

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCfnHUP.png)
[cfn-hup](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-hup.html): Rerun config when change detected

> [!NOTE] What cfn-hup stands for?
>
> **cfn** **h**ot **up**date.

See [Update behaviors of stack resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html)

## [_DEMO_] wait conditions, cfn-signal, cfn-init and cfn-hup-PART1 (12:51)

## [_DEMO_] wait conditions, cfn-signal, cfn-init and cfn-hup-PART2 (14:42)

## CloudFormation ChangeSets [NEW VERSION COMING SOON] (11:03)

![Alt text](<images/Screenshot from 2023-10-14 16-22-54.png>)
Cfn ChangeSets: Preview changes before execute

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationChangeSets.png)
Cfn ChangeSets: Example

## CloudFormation Custom Resources (11:03)

![Alt text](<images/Screenshot from 2023-10-14 16-36-54.png>)
Cfn Custom Resources: Let Cfn integrate with not-natively-support things

![Alt text](./material/2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCustomResources.png)
Cfn Custom Resources: Example

## [_DEMO_] CloudFormation Custom Resources-PART1 (9:12)

## [_DEMO_] CloudFormation Custom Resources-PART2 (13:27)

[^1]: Value of the physical ID of the resource or the value of the parameter
[^2]: Attribute's value
[^3]: The list of Availability Zones for the Region.
[^4]: The selected object (0-index)
[^5]: `echo -n 'AWS CloudFormation' | base64`
[^6]: For Ref, the full form is more simple than the short form
