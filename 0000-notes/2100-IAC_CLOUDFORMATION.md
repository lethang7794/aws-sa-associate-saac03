# INFRASTRUCTURE AS CODE (CLOUDFORMATION)

## CloudFormation Physical & Logical Resources (7:30)

![Alt text](<images/Screenshot from 2023-10-13 10-10-03.png>)
Physical Resource / Logical Resource - Template - Stack

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/Physical-and-Logical-Resources-1.png)
CloudFormation - Architecture

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/Physical-and-Logical-Resources-2.png)
CloudFormation - Stack Create/Update/Delete

## [_DEMO_] Simple Non Portable Template - PART1 (10:28)

## [_DEMO_] Simple Non Portable Template - PART2 (11:28)

## CloudFormation Template and Pseudo Parameters (6:53)

![Alt text](<images/Screenshot from 2023-10-13 12-02-24.png>)
Template/Pseudo Parameters - Overview

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/TemplateParameters-1.png)
Template Parameters - Input for Cfn Template

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/PseudoParameters-1.png)
[Pseudo Parameters](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/pseudo-parameter-reference.html) - Provided by AWS based on the **Stack** environment

> [!NOTE] What are the difference between _Cfn - **Pseudo Parameters**_ and _AWS Systems Manager - **public parameters**_
>
> - _Cfn - **Pseudo Parameters**_: Parameters predefined by AWS CloudFormation
>
> - _AWS Systems Manager - **public parameters**_: Common artifacts published by some AWS services:
>   - EC2: Information about AMIs:
>     - `ami-amazon-linux-latest`
>     - `ami-windows-latest`
>
>   - ECS: `/aws/service/ecs/optimized-ami/amazon-linux-2/recommended`
>   - EKS: `/aws/service/eks/optimized-ami/1.14/amazon-linux-2/recommended`
>   - AWS:
>     - Services
>     - Regions
>     - Availability Zone
>     - ...

## CloudFormation Intrinsic Functions (14:28)

![Alt text](<images/Screenshot from 2023-10-13 12-30-38.png>)
Cfn - [Intrinsic Functions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html)

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-1.png)
Cfn Intrinsic Functions: `Ref` & `Fn::GetAtt`

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-2.png)
Cfn Intrinsic Functions: `Fn:GetAZs` & `Fn:Select`

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-3.png)
Cfn Intrinsic Functions: `Fn:Join` & `Fn:Split`

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-4.png)
Cfn Intrinsic Functions: `Fn:Base64` & `Fn:Sub`

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/IntrinsicFunctions-5.png)
Cfn Intrinsic Functions: `Fn:Cidr`

## CloudFormation Mappings (4:30)

![Alt text](<images/Screenshot from 2023-10-13 13-11-21.png>)
Cfn Mappings (Template): [`Mappings` section](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html)  

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationMappings.png)
Cfn Mappings: [`Fn::FindInMap`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html)

## CloudFormation Outputs (3:37)

![Alt text](<images/Screenshot from 2023-10-13 13-22-47.png>)
Cfn [Outputs (Template)](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html): Views in CLI/Console - Used by parent-stack, cross-stack

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationOutputs.png)
Cfn Outputs: Example

## [_DEMO_] Template v2 - Portable (13:34)

## CloudFormation Conditions (7:24)

![Alt text](<images/Screenshot from 2023-10-13 14-37-36.png>)
Cfn Conditions (Template): Only create resources if conditions meet

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationConditions.png)
Cfn Conditions: Example

## CloudFormation DependsOn (7:14)

![Alt text](<images/Screenshot from 2023-10-13 14-52-57.png>)
Cfn [DependsOn (Resource)](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html): Explicitly define resources dependency order

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationDependsOn.png)
Cfn DependsOn: Example

## CloudFormation Wait Conditions, CreationPolicy & cfn-signal (11:52)

![Alt text](<images/Screenshot from 2023-10-13 15-00-58.png>)
Cfn Provisioning - How do Cfn know that a resource successfully created/update?

![Alt text](<images/Screenshot from 2023-10-13 15-03-40.png>)
[cfn-signal](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-signal.html): Signals CloudFormation to indicate whether Amazon EC2 instances have been successfully created/updated

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCreationPolicy.png)
Cfn [Creation Policy (Resource)](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html): Tell Cfn to wait on resource configuration actions before stack creation proceeds.

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationWaitConditions.png)
Cfn [Wait Conditions (Template)](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-waitcondition.html): Tell Cfn to pause the creation of a stack and wait for a signal before it continues to create the stack

## CloudFormation Nested Stacks (13:55)

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationNestedStacks-1.png)
Single Stack - The Problem

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationNestedStacks-2.png)
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

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCrossStackReferences-1.png)
Cfn Stacks are isolated and self-contained

![Alt text](<images/Screenshot from 2023-10-13 16-23-04.png>)
Cfn `Outputs` `Export`: Make a stack visible to other stacks ([Cross-Stack References](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/walkthrough-crossstackref.html))

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCrossStackReferences-2.png)
Cfn Cross-Stack References - Fn::ImportValue: Import another stack's Outputs Export

## CloudFormation Deletion Policy (5:24)

![Alt text](<images/Screenshot from 2023-10-13 20-47-57.png>)
Cfn DeletionPolicy - What happen to physical resource when its logical resource deleted?

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationDeletionPolicy.png)
Cfn DeletionPolicy - Delete (Default) / Retain / Snapshot (If supported)

## CloudFormation Stack Sets (9:12)

![Alt text](<images/Screenshot from 2023-10-13 20-21-11.png>)
Cfn StackSets - [Concepts](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/what-is-cfnstacksets.html)

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationStackSets.png)
Cfn StackSets - Architecture

![Alt text](<images/Screenshot from 2023-10-13 20-25-45.png>)
Cfn StackSets - Key Points

## CloudFormation Stack Roles (6:47)

![Alt text](<images/Screenshot from 2023-10-13 20-59-08.png>)
Cfn Stack Roles - Overview

> [!NOTE] ⚠️ The identity creating the stack doesn't need permissions for resources.
>
> It only needs permissions for:
>
> - creating the stack
> - `PassRole` to give Cfn the role with permissions for creating resources.

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationStackRoles.png)
Cfn Stack Roles - Example

## CloudFormation Init (cfn-init) (8:48)

![Alt text](<images/Screenshot from 2023-10-13 21-13-38.png>)
[cfn-init](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-init.html): Overview

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationInit-and-Cfninit.png)
cfn-init: **config keys** - *configsets*

## CloudFormation cfn-hup (4:13)

![Alt text](<images/Screenshot from 2023-10-14 00-49-29.png>)
cfn-init: The problem

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCfnHUP.png)
[cfn-hup](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-hup.html): Rerun config when change detected

> [!NOTE] What **cfn-hup** stands for?
>
> **cfn** **h**ot **up**date.

> [!NOTE] [Update behaviors of stack resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html)

## [_DEMO_] wait conditions, cfn-signal, cfn-init and cfn-hup-PART1 (12:51)

## [_DEMO_] wait conditions, cfn-signal, cfn-init and cfn-hup-PART2 (14:42)

## CloudFormation ChangeSets [NEW VERSION COMING SOON] (11:03)

![Alt text](<images/Screenshot from 2023-10-14 16-22-54.png>)
Cfn ChangeSets: Preview changes before execute

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationChangeSets.png)
Cfn ChangeSets: Example

## CloudFormation Custom Resources (11:03)

![Alt text](<images/Screenshot from 2023-10-14 16-36-54.png>)
Cfn Custom Resources: Let Cfn integrate with not-natively-support things

![Alt text](../2100-IAC_CLOUDFORMATION/00_LEARNINGAIDS/CloudFormationCustomResources.png)
Cfn Custom Resources: Example

## [_DEMO_] CloudFormation Custom Resources-PART1 (9:12)

## [_DEMO_] CloudFormation Custom Resources-PART2 (13:27)
