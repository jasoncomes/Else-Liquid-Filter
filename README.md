# else

*If the input variable is not true then this will display the output.*

### **Usage**

    {{ input | else: output }}

### **Parameters**

- `input` string. required. The variable to check if it is true or exists.
- `output` string. required. The variable to output if the input is false or does not exist.

### Return

- string. The input or output value depending on the status of input.

## **Example**

### Input

    {% assign var1 = "hello world" %}
    {% assign var2 = "" %}
    
    Example 1: {{ var1 | else: "goodbye world" }}
    Example 2: {{ var2 | else: "goodbye world" }}

### **Output**

    Example 1: hello world
    Example 2: goodbye world
