node {
  name: "x-input"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 2
        }
      }
    }
  }
}
node {
  name: "y-input"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 1
        }
      }
    }
  }
}
node {
  name: "random_uniform/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform/sub"
  op: "Sub"
  input: "random_uniform/max"
  input: "random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform/mul"
  op: "Mul"
  input: "random_uniform/RandomUniform"
  input: "random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform"
  op: "Add"
  input: "random_uniform/mul"
  input: "random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable/Assign"
  op: "Assign"
  input: "Variable"
  input: "random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable/read"
  op: "Identity"
  input: "Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
}
node {
  name: "random_uniform_1/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_1/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_1/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_1/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_1/sub"
  op: "Sub"
  input: "random_uniform_1/max"
  input: "random_uniform_1/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_1/mul"
  op: "Mul"
  input: "random_uniform_1/RandomUniform"
  input: "random_uniform_1/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_1"
  op: "Add"
  input: "random_uniform_1/mul"
  input: "random_uniform_1/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_1"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_1/Assign"
  op: "Assign"
  input: "Variable_1"
  input: "random_uniform_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_1/read"
  op: "Identity"
  input: "Variable_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
}
node {
  name: "zeros"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 2
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_2"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_2/Assign"
  op: "Assign"
  input: "Variable_2"
  input: "zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_2/read"
  op: "Identity"
  input: "Variable_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
}
node {
  name: "zeros_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_3"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_3/Assign"
  op: "Assign"
  input: "Variable_3"
  input: "zeros_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_3/read"
  op: "Identity"
  input: "Variable_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
}
node {
  name: "MatMul"
  op: "MatMul"
  input: "x-input"
  input: "Variable/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add"
  op: "Add"
  input: "MatMul"
  input: "Variable_2/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_1"
  op: "MatMul"
  input: "Add"
  input: "Variable_1/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_1"
  op: "Add"
  input: "MatMul_1"
  input: "Variable_3/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "sub"
  op: "Sub"
  input: "y-input"
  input: "Add_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Mul"
  op: "Mul"
  input: "sub"
  input: "sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "cost"
  op: "Mean"
  input: "Mul"
  input: "Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients/Fill"
  op: "Fill"
  input: "gradients/Shape"
  input: "gradients/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/cost_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/cost_grad/Reshape"
  op: "Reshape"
  input: "gradients/Fill"
  input: "gradients/cost_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/cost_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/cost_grad/Tile"
  op: "Tile"
  input: "gradients/cost_grad/Reshape"
  input: "gradients/cost_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/cost_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 4.0
      }
    }
  }
}
node {
  name: "gradients/cost_grad/truediv"
  op: "RealDiv"
  input: "gradients/cost_grad/Tile"
  input: "gradients/cost_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/Mul_grad/Mul"
  op: "Mul"
  input: "gradients/cost_grad/truediv"
  input: "sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/Mul_grad/Mul_1"
  op: "Mul"
  input: "gradients/cost_grad/truediv"
  input: "sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/Mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/Mul_grad/Mul"
  input: "^gradients/Mul_grad/Mul_1"
}
node {
  name: "gradients/Mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/Mul_grad/Mul"
  input: "^gradients/Mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Mul_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients/Mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/Mul_grad/Mul_1"
  input: "^gradients/Mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Mul_grad/Mul_1"
      }
    }
  }
}
node {
  name: "gradients/AddN"
  op: "AddN"
  input: "gradients/Mul_grad/tuple/control_dependency"
  input: "gradients/Mul_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Mul_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients/sub_grad/Neg"
  op: "Neg"
  input: "gradients/AddN"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/sub_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/AddN"
  input: "^gradients/sub_grad/Neg"
}
node {
  name: "gradients/sub_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/AddN"
  input: "^gradients/sub_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Mul_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients/sub_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/sub_grad/Neg"
  input: "^gradients/sub_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/sub_grad/Neg"
      }
    }
  }
}
node {
  name: "gradients/Add_1_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/Add_1_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/Add_1_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/Add_1_grad/Shape"
  input: "gradients/Add_1_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Add_1_grad/Sum"
  op: "Sum"
  input: "gradients/sub_grad/tuple/control_dependency_1"
  input: "gradients/Add_1_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Add_1_grad/Reshape"
  op: "Reshape"
  input: "gradients/Add_1_grad/Sum"
  input: "gradients/Add_1_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Add_1_grad/Sum_1"
  op: "Sum"
  input: "gradients/sub_grad/tuple/control_dependency_1"
  input: "gradients/Add_1_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Add_1_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/Add_1_grad/Sum_1"
  input: "gradients/Add_1_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Add_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/Add_1_grad/Reshape"
  input: "^gradients/Add_1_grad/Reshape_1"
}
node {
  name: "gradients/Add_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/Add_1_grad/Reshape"
  input: "^gradients/Add_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Add_1_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/Add_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/Add_1_grad/Reshape_1"
  input: "^gradients/Add_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Add_1_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/MatMul_1_grad/MatMul"
  op: "MatMul"
  input: "gradients/Add_1_grad/tuple/control_dependency"
  input: "Variable_1/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/MatMul_1_grad/MatMul_1"
  op: "MatMul"
  input: "Add"
  input: "gradients/Add_1_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/MatMul_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/MatMul_1_grad/MatMul"
  input: "^gradients/MatMul_1_grad/MatMul_1"
}
node {
  name: "gradients/MatMul_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/MatMul_1_grad/MatMul"
  input: "^gradients/MatMul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_1_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/MatMul_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/MatMul_1_grad/MatMul_1"
  input: "^gradients/MatMul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_1_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/Add_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "gradients/Add_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients/Add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/Add_grad/Shape"
  input: "gradients/Add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Add_grad/Sum"
  op: "Sum"
  input: "gradients/MatMul_1_grad/tuple/control_dependency"
  input: "gradients/Add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Add_grad/Reshape"
  op: "Reshape"
  input: "gradients/Add_grad/Sum"
  input: "gradients/Add_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Add_grad/Sum_1"
  op: "Sum"
  input: "gradients/MatMul_1_grad/tuple/control_dependency"
  input: "gradients/Add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/Add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/Add_grad/Sum_1"
  input: "gradients/Add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/Add_grad/Reshape"
  input: "^gradients/Add_grad/Reshape_1"
}
node {
  name: "gradients/Add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/Add_grad/Reshape"
  input: "^gradients/Add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/Add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/Add_grad/Reshape_1"
  input: "^gradients/Add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/Add_grad/tuple/control_dependency"
  input: "Variable/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "x-input"
  input: "gradients/Add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/MatMul_grad/MatMul"
  input: "^gradients/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/MatMul_grad/MatMul"
  input: "^gradients/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/MatMul_grad/MatMul_1"
  input: "^gradients/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "GradientDescent/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0010000000474974513
      }
    }
  }
}
node {
  name: "GradientDescent/update_Variable/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable"
  input: "GradientDescent/learning_rate"
  input: "gradients/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent/update_Variable_1/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_1"
  input: "GradientDescent/learning_rate"
  input: "gradients/MatMul_1_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_1"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent/update_Variable_2/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_2"
  input: "GradientDescent/learning_rate"
  input: "gradients/Add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_2"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent/update_Variable_3/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_3"
  input: "GradientDescent/learning_rate"
  input: "gradients/Add_1_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_3"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent"
  op: "NoOp"
  input: "^GradientDescent/update_Variable/ApplyGradientDescent"
  input: "^GradientDescent/update_Variable_1/ApplyGradientDescent"
  input: "^GradientDescent/update_Variable_2/ApplyGradientDescent"
  input: "^GradientDescent/update_Variable_3/ApplyGradientDescent"
}
node {
  name: "init"
  op: "NoOp"
  input: "^Variable/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_3/Assign"
}
node {
  name: "x-input_1"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 2
        }
      }
    }
  }
}
node {
  name: "y-input_1"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 1
        }
      }
    }
  }
}
node {
  name: "random_uniform_2/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_2/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_2/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_2/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_2/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_2/sub"
  op: "Sub"
  input: "random_uniform_2/max"
  input: "random_uniform_2/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_2/mul"
  op: "Mul"
  input: "random_uniform_2/RandomUniform"
  input: "random_uniform_2/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_2"
  op: "Add"
  input: "random_uniform_2/mul"
  input: "random_uniform_2/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_4"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_4/Assign"
  op: "Assign"
  input: "Variable_4"
  input: "random_uniform_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_4/read"
  op: "Identity"
  input: "Variable_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_4"
      }
    }
  }
}
node {
  name: "random_uniform_3/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_3/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_3/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_3/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_3/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_3/sub"
  op: "Sub"
  input: "random_uniform_3/max"
  input: "random_uniform_3/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_3/mul"
  op: "Mul"
  input: "random_uniform_3/RandomUniform"
  input: "random_uniform_3/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_3"
  op: "Add"
  input: "random_uniform_3/mul"
  input: "random_uniform_3/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_5"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_5/Assign"
  op: "Assign"
  input: "Variable_5"
  input: "random_uniform_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_5/read"
  op: "Identity"
  input: "Variable_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_5"
      }
    }
  }
}
node {
  name: "zeros_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 2
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_6"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_6/Assign"
  op: "Assign"
  input: "Variable_6"
  input: "zeros_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_6/read"
  op: "Identity"
  input: "Variable_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_6"
      }
    }
  }
}
node {
  name: "zeros_3"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_7"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_7/Assign"
  op: "Assign"
  input: "Variable_7"
  input: "zeros_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_7/read"
  op: "Identity"
  input: "Variable_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_7"
      }
    }
  }
}
node {
  name: "MatMul_2"
  op: "MatMul"
  input: "x-input_1"
  input: "Variable_4/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_2"
  op: "Add"
  input: "MatMul_2"
  input: "Variable_6/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "x-input_2"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 2
        }
      }
    }
  }
}
node {
  name: "y-input_2"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 1
        }
      }
    }
  }
}
node {
  name: "random_uniform_4/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_4/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_4/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_4/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_4/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_4/sub"
  op: "Sub"
  input: "random_uniform_4/max"
  input: "random_uniform_4/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_4/mul"
  op: "Mul"
  input: "random_uniform_4/RandomUniform"
  input: "random_uniform_4/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_4"
  op: "Add"
  input: "random_uniform_4/mul"
  input: "random_uniform_4/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_8"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_8/Assign"
  op: "Assign"
  input: "Variable_8"
  input: "random_uniform_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_8/read"
  op: "Identity"
  input: "Variable_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
}
node {
  name: "random_uniform_5/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_5/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_5/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_5/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_5/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_5/sub"
  op: "Sub"
  input: "random_uniform_5/max"
  input: "random_uniform_5/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_5/mul"
  op: "Mul"
  input: "random_uniform_5/RandomUniform"
  input: "random_uniform_5/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_5"
  op: "Add"
  input: "random_uniform_5/mul"
  input: "random_uniform_5/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_9"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_9/Assign"
  op: "Assign"
  input: "Variable_9"
  input: "random_uniform_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_9/read"
  op: "Identity"
  input: "Variable_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
}
node {
  name: "zeros_4"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 2
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_10"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_10/Assign"
  op: "Assign"
  input: "Variable_10"
  input: "zeros_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_10/read"
  op: "Identity"
  input: "Variable_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
}
node {
  name: "zeros_5"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_11"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_11/Assign"
  op: "Assign"
  input: "Variable_11"
  input: "zeros_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_11/read"
  op: "Identity"
  input: "Variable_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
}
node {
  name: "MatMul_3"
  op: "MatMul"
  input: "x-input_2"
  input: "Variable_8/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_3"
  op: "Add"
  input: "MatMul_3"
  input: "Variable_10/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid"
  op: "Sigmoid"
  input: "Add_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_4"
  op: "MatMul"
  input: "Sigmoid"
  input: "Variable_9/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_4"
  op: "Add"
  input: "MatMul_4"
  input: "Variable_11/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "sub_1"
  op: "Sub"
  input: "y-input_2"
  input: "Add_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Mul_1"
  op: "Mul"
  input: "sub_1"
  input: "sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "cost_1"
  op: "Mean"
  input: "Mul_1"
  input: "Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_1/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_1/Fill"
  op: "Fill"
  input: "gradients_1/Shape"
  input: "gradients_1/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/cost_1_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_1/cost_1_grad/Reshape"
  op: "Reshape"
  input: "gradients_1/Fill"
  input: "gradients_1/cost_1_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/cost_1_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_1/cost_1_grad/Tile"
  op: "Tile"
  input: "gradients_1/cost_1_grad/Reshape"
  input: "gradients_1/cost_1_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/cost_1_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 4.0
      }
    }
  }
}
node {
  name: "gradients_1/cost_1_grad/truediv"
  op: "RealDiv"
  input: "gradients_1/cost_1_grad/Tile"
  input: "gradients_1/cost_1_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/Mul_1_grad/Mul"
  op: "Mul"
  input: "gradients_1/cost_1_grad/truediv"
  input: "sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/Mul_1_grad/Mul_1"
  op: "Mul"
  input: "gradients_1/cost_1_grad/truediv"
  input: "sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/Mul_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/Mul_1_grad/Mul"
  input: "^gradients_1/Mul_1_grad/Mul_1"
}
node {
  name: "gradients_1/Mul_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/Mul_1_grad/Mul"
  input: "^gradients_1/Mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Mul_1_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_1/Mul_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/Mul_1_grad/Mul_1"
  input: "^gradients_1/Mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Mul_1_grad/Mul_1"
      }
    }
  }
}
node {
  name: "gradients_1/AddN"
  op: "AddN"
  input: "gradients_1/Mul_1_grad/tuple/control_dependency"
  input: "gradients_1/Mul_1_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Mul_1_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_1/sub_1_grad/Neg"
  op: "Neg"
  input: "gradients_1/AddN"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/sub_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/AddN"
  input: "^gradients_1/sub_1_grad/Neg"
}
node {
  name: "gradients_1/sub_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/AddN"
  input: "^gradients_1/sub_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Mul_1_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_1/sub_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/sub_1_grad/Neg"
  input: "^gradients_1/sub_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/sub_1_grad/Neg"
      }
    }
  }
}
node {
  name: "gradients_1/Add_4_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_1/Add_4_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_1/Add_4_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_1/Add_4_grad/Shape"
  input: "gradients_1/Add_4_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Add_4_grad/Sum"
  op: "Sum"
  input: "gradients_1/sub_1_grad/tuple/control_dependency_1"
  input: "gradients_1/Add_4_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/Add_4_grad/Reshape"
  op: "Reshape"
  input: "gradients_1/Add_4_grad/Sum"
  input: "gradients_1/Add_4_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Add_4_grad/Sum_1"
  op: "Sum"
  input: "gradients_1/sub_1_grad/tuple/control_dependency_1"
  input: "gradients_1/Add_4_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/Add_4_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_1/Add_4_grad/Sum_1"
  input: "gradients_1/Add_4_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Add_4_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/Add_4_grad/Reshape"
  input: "^gradients_1/Add_4_grad/Reshape_1"
}
node {
  name: "gradients_1/Add_4_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/Add_4_grad/Reshape"
  input: "^gradients_1/Add_4_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Add_4_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_1/Add_4_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/Add_4_grad/Reshape_1"
  input: "^gradients_1/Add_4_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Add_4_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_1/MatMul_4_grad/MatMul"
  op: "MatMul"
  input: "gradients_1/Add_4_grad/tuple/control_dependency"
  input: "Variable_9/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_1/MatMul_4_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid"
  input: "gradients_1/Add_4_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/MatMul_4_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/MatMul_4_grad/MatMul"
  input: "^gradients_1/MatMul_4_grad/MatMul_1"
}
node {
  name: "gradients_1/MatMul_4_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/MatMul_4_grad/MatMul"
  input: "^gradients_1/MatMul_4_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/MatMul_4_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_1/MatMul_4_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/MatMul_4_grad/MatMul_1"
  input: "^gradients_1/MatMul_4_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/MatMul_4_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_1/Sigmoid_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid"
  input: "gradients_1/MatMul_4_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_1/Add_3_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_1/Add_3_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_1/Add_3_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_1/Add_3_grad/Shape"
  input: "gradients_1/Add_3_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Add_3_grad/Sum"
  op: "Sum"
  input: "gradients_1/Sigmoid_grad/SigmoidGrad"
  input: "gradients_1/Add_3_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/Add_3_grad/Reshape"
  op: "Reshape"
  input: "gradients_1/Add_3_grad/Sum"
  input: "gradients_1/Add_3_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Add_3_grad/Sum_1"
  op: "Sum"
  input: "gradients_1/Sigmoid_grad/SigmoidGrad"
  input: "gradients_1/Add_3_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/Add_3_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_1/Add_3_grad/Sum_1"
  input: "gradients_1/Add_3_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_1/Add_3_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/Add_3_grad/Reshape"
  input: "^gradients_1/Add_3_grad/Reshape_1"
}
node {
  name: "gradients_1/Add_3_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/Add_3_grad/Reshape"
  input: "^gradients_1/Add_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Add_3_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_1/Add_3_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/Add_3_grad/Reshape_1"
  input: "^gradients_1/Add_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/Add_3_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_1/MatMul_3_grad/MatMul"
  op: "MatMul"
  input: "gradients_1/Add_3_grad/tuple/control_dependency"
  input: "Variable_8/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_1/MatMul_3_grad/MatMul_1"
  op: "MatMul"
  input: "x-input_2"
  input: "gradients_1/Add_3_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_1/MatMul_3_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_1/MatMul_3_grad/MatMul"
  input: "^gradients_1/MatMul_3_grad/MatMul_1"
}
node {
  name: "gradients_1/MatMul_3_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_1/MatMul_3_grad/MatMul"
  input: "^gradients_1/MatMul_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/MatMul_3_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_1/MatMul_3_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_1/MatMul_3_grad/MatMul_1"
  input: "^gradients_1/MatMul_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_1/MatMul_3_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "GradientDescent_1/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0010000000474974513
      }
    }
  }
}
node {
  name: "GradientDescent_1/update_Variable_8/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_8"
  input: "GradientDescent_1/learning_rate"
  input: "gradients_1/MatMul_3_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_8"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_1/update_Variable_9/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_9"
  input: "GradientDescent_1/learning_rate"
  input: "gradients_1/MatMul_4_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_9"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_1/update_Variable_10/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_10"
  input: "GradientDescent_1/learning_rate"
  input: "gradients_1/Add_3_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_10"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_1/update_Variable_11/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_11"
  input: "GradientDescent_1/learning_rate"
  input: "gradients_1/Add_4_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_11"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_1"
  op: "NoOp"
  input: "^GradientDescent_1/update_Variable_10/ApplyGradientDescent"
  input: "^GradientDescent_1/update_Variable_11/ApplyGradientDescent"
  input: "^GradientDescent_1/update_Variable_8/ApplyGradientDescent"
  input: "^GradientDescent_1/update_Variable_9/ApplyGradientDescent"
}
node {
  name: "init_1"
  op: "NoOp"
  input: "^Variable/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Assign"
}
node {
  name: "x-input_3"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 2
        }
      }
    }
  }
}
node {
  name: "y-input_3"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 1
        }
      }
    }
  }
}
node {
  name: "random_uniform_6/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_6/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_6/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_6/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_6/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_6/sub"
  op: "Sub"
  input: "random_uniform_6/max"
  input: "random_uniform_6/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_6/mul"
  op: "Mul"
  input: "random_uniform_6/RandomUniform"
  input: "random_uniform_6/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_6"
  op: "Add"
  input: "random_uniform_6/mul"
  input: "random_uniform_6/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_12"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_12/Assign"
  op: "Assign"
  input: "Variable_12"
  input: "random_uniform_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_12/read"
  op: "Identity"
  input: "Variable_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
}
node {
  name: "random_uniform_7/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_7/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_7/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_7/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_7/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_7/sub"
  op: "Sub"
  input: "random_uniform_7/max"
  input: "random_uniform_7/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_7/mul"
  op: "Mul"
  input: "random_uniform_7/RandomUniform"
  input: "random_uniform_7/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_7"
  op: "Add"
  input: "random_uniform_7/mul"
  input: "random_uniform_7/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_13"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_13/Assign"
  op: "Assign"
  input: "Variable_13"
  input: "random_uniform_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_13/read"
  op: "Identity"
  input: "Variable_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
}
node {
  name: "zeros_6"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 2
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_14"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_14/Assign"
  op: "Assign"
  input: "Variable_14"
  input: "zeros_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_14/read"
  op: "Identity"
  input: "Variable_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
}
node {
  name: "zeros_7"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_15"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_15/Assign"
  op: "Assign"
  input: "Variable_15"
  input: "zeros_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_15/read"
  op: "Identity"
  input: "Variable_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
}
node {
  name: "MatMul_5"
  op: "MatMul"
  input: "x-input_3"
  input: "Variable_12/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_5"
  op: "Add"
  input: "MatMul_5"
  input: "Variable_14/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_1"
  op: "Sigmoid"
  input: "Add_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_6"
  op: "MatMul"
  input: "Sigmoid_1"
  input: "Variable_13/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_6"
  op: "Add"
  input: "MatMul_6"
  input: "Variable_15/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "sub_2"
  op: "Sub"
  input: "y-input_3"
  input: "Add_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Mul_2"
  op: "Mul"
  input: "sub_2"
  input: "sub_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "cost_2"
  op: "Mean"
  input: "Mul_2"
  input: "Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_2/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_2/Fill"
  op: "Fill"
  input: "gradients_2/Shape"
  input: "gradients_2/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/cost_2_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_2/cost_2_grad/Reshape"
  op: "Reshape"
  input: "gradients_2/Fill"
  input: "gradients_2/cost_2_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/cost_2_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_2/cost_2_grad/Tile"
  op: "Tile"
  input: "gradients_2/cost_2_grad/Reshape"
  input: "gradients_2/cost_2_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/cost_2_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 4.0
      }
    }
  }
}
node {
  name: "gradients_2/cost_2_grad/truediv"
  op: "RealDiv"
  input: "gradients_2/cost_2_grad/Tile"
  input: "gradients_2/cost_2_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/Mul_2_grad/Mul"
  op: "Mul"
  input: "gradients_2/cost_2_grad/truediv"
  input: "sub_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/Mul_2_grad/Mul_1"
  op: "Mul"
  input: "gradients_2/cost_2_grad/truediv"
  input: "sub_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/Mul_2_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/Mul_2_grad/Mul"
  input: "^gradients_2/Mul_2_grad/Mul_1"
}
node {
  name: "gradients_2/Mul_2_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/Mul_2_grad/Mul"
  input: "^gradients_2/Mul_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Mul_2_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_2/Mul_2_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/Mul_2_grad/Mul_1"
  input: "^gradients_2/Mul_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Mul_2_grad/Mul_1"
      }
    }
  }
}
node {
  name: "gradients_2/AddN"
  op: "AddN"
  input: "gradients_2/Mul_2_grad/tuple/control_dependency"
  input: "gradients_2/Mul_2_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Mul_2_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_2/sub_2_grad/Neg"
  op: "Neg"
  input: "gradients_2/AddN"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/sub_2_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/AddN"
  input: "^gradients_2/sub_2_grad/Neg"
}
node {
  name: "gradients_2/sub_2_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/AddN"
  input: "^gradients_2/sub_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Mul_2_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_2/sub_2_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/sub_2_grad/Neg"
  input: "^gradients_2/sub_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/sub_2_grad/Neg"
      }
    }
  }
}
node {
  name: "gradients_2/Add_6_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_2/Add_6_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_2/Add_6_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_2/Add_6_grad/Shape"
  input: "gradients_2/Add_6_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Add_6_grad/Sum"
  op: "Sum"
  input: "gradients_2/sub_2_grad/tuple/control_dependency_1"
  input: "gradients_2/Add_6_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/Add_6_grad/Reshape"
  op: "Reshape"
  input: "gradients_2/Add_6_grad/Sum"
  input: "gradients_2/Add_6_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Add_6_grad/Sum_1"
  op: "Sum"
  input: "gradients_2/sub_2_grad/tuple/control_dependency_1"
  input: "gradients_2/Add_6_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/Add_6_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_2/Add_6_grad/Sum_1"
  input: "gradients_2/Add_6_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Add_6_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/Add_6_grad/Reshape"
  input: "^gradients_2/Add_6_grad/Reshape_1"
}
node {
  name: "gradients_2/Add_6_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/Add_6_grad/Reshape"
  input: "^gradients_2/Add_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Add_6_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_2/Add_6_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/Add_6_grad/Reshape_1"
  input: "^gradients_2/Add_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Add_6_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_2/MatMul_6_grad/MatMul"
  op: "MatMul"
  input: "gradients_2/Add_6_grad/tuple/control_dependency"
  input: "Variable_13/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_2/MatMul_6_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_1"
  input: "gradients_2/Add_6_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/MatMul_6_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/MatMul_6_grad/MatMul"
  input: "^gradients_2/MatMul_6_grad/MatMul_1"
}
node {
  name: "gradients_2/MatMul_6_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/MatMul_6_grad/MatMul"
  input: "^gradients_2/MatMul_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/MatMul_6_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_2/MatMul_6_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/MatMul_6_grad/MatMul_1"
  input: "^gradients_2/MatMul_6_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/MatMul_6_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_2/Sigmoid_1_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_1"
  input: "gradients_2/MatMul_6_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_2/Add_5_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_2/Add_5_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_2/Add_5_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_2/Add_5_grad/Shape"
  input: "gradients_2/Add_5_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Add_5_grad/Sum"
  op: "Sum"
  input: "gradients_2/Sigmoid_1_grad/SigmoidGrad"
  input: "gradients_2/Add_5_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/Add_5_grad/Reshape"
  op: "Reshape"
  input: "gradients_2/Add_5_grad/Sum"
  input: "gradients_2/Add_5_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Add_5_grad/Sum_1"
  op: "Sum"
  input: "gradients_2/Sigmoid_1_grad/SigmoidGrad"
  input: "gradients_2/Add_5_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/Add_5_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_2/Add_5_grad/Sum_1"
  input: "gradients_2/Add_5_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_2/Add_5_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/Add_5_grad/Reshape"
  input: "^gradients_2/Add_5_grad/Reshape_1"
}
node {
  name: "gradients_2/Add_5_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/Add_5_grad/Reshape"
  input: "^gradients_2/Add_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Add_5_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_2/Add_5_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/Add_5_grad/Reshape_1"
  input: "^gradients_2/Add_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/Add_5_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_2/MatMul_5_grad/MatMul"
  op: "MatMul"
  input: "gradients_2/Add_5_grad/tuple/control_dependency"
  input: "Variable_12/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_2/MatMul_5_grad/MatMul_1"
  op: "MatMul"
  input: "x-input_3"
  input: "gradients_2/Add_5_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_2/MatMul_5_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_2/MatMul_5_grad/MatMul"
  input: "^gradients_2/MatMul_5_grad/MatMul_1"
}
node {
  name: "gradients_2/MatMul_5_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_2/MatMul_5_grad/MatMul"
  input: "^gradients_2/MatMul_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/MatMul_5_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_2/MatMul_5_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_2/MatMul_5_grad/MatMul_1"
  input: "^gradients_2/MatMul_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_2/MatMul_5_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "GradientDescent_2/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "GradientDescent_2/update_Variable_12/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_12"
  input: "GradientDescent_2/learning_rate"
  input: "gradients_2/MatMul_5_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_12"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_2/update_Variable_13/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_13"
  input: "GradientDescent_2/learning_rate"
  input: "gradients_2/MatMul_6_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_13"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_2/update_Variable_14/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_14"
  input: "GradientDescent_2/learning_rate"
  input: "gradients_2/Add_5_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_14"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_2/update_Variable_15/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_15"
  input: "GradientDescent_2/learning_rate"
  input: "gradients_2/Add_6_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_15"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_2"
  op: "NoOp"
  input: "^GradientDescent_2/update_Variable_12/ApplyGradientDescent"
  input: "^GradientDescent_2/update_Variable_13/ApplyGradientDescent"
  input: "^GradientDescent_2/update_Variable_14/ApplyGradientDescent"
  input: "^GradientDescent_2/update_Variable_15/ApplyGradientDescent"
}
node {
  name: "init_2"
  op: "NoOp"
  input: "^Variable/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_12/Assign"
  input: "^Variable_13/Assign"
  input: "^Variable_14/Assign"
  input: "^Variable_15/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Assign"
}
node {
  name: "x-input_4"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 2
        }
      }
    }
  }
}
node {
  name: "y-input_4"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 1
        }
      }
    }
  }
}
node {
  name: "random_uniform_8/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_8/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_8/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_8/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_8/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_8/sub"
  op: "Sub"
  input: "random_uniform_8/max"
  input: "random_uniform_8/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_8/mul"
  op: "Mul"
  input: "random_uniform_8/RandomUniform"
  input: "random_uniform_8/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_8"
  op: "Add"
  input: "random_uniform_8/mul"
  input: "random_uniform_8/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_16"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_16/Assign"
  op: "Assign"
  input: "Variable_16"
  input: "random_uniform_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_16/read"
  op: "Identity"
  input: "Variable_16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
}
node {
  name: "random_uniform_9/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_9/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_9/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_9/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_9/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_9/sub"
  op: "Sub"
  input: "random_uniform_9/max"
  input: "random_uniform_9/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_9/mul"
  op: "Mul"
  input: "random_uniform_9/RandomUniform"
  input: "random_uniform_9/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_9"
  op: "Add"
  input: "random_uniform_9/mul"
  input: "random_uniform_9/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_17"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_17/Assign"
  op: "Assign"
  input: "Variable_17"
  input: "random_uniform_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_17/read"
  op: "Identity"
  input: "Variable_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
}
node {
  name: "zeros_8"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 2
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_18"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_18/Assign"
  op: "Assign"
  input: "Variable_18"
  input: "zeros_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_18/read"
  op: "Identity"
  input: "Variable_18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
}
node {
  name: "zeros_9"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_19"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_19/Assign"
  op: "Assign"
  input: "Variable_19"
  input: "zeros_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_19/read"
  op: "Identity"
  input: "Variable_19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
}
node {
  name: "MatMul_7"
  op: "MatMul"
  input: "x-input_4"
  input: "Variable_16/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_7"
  op: "Add"
  input: "MatMul_7"
  input: "Variable_18/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_2"
  op: "Sigmoid"
  input: "Add_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_8"
  op: "MatMul"
  input: "Sigmoid_2"
  input: "Variable_17/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_8"
  op: "Add"
  input: "MatMul_8"
  input: "Variable_19/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "sub_3"
  op: "Sub"
  input: "y-input_4"
  input: "Add_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Mul_3"
  op: "Mul"
  input: "sub_3"
  input: "sub_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_3"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "cost_3"
  op: "Mean"
  input: "Mul_3"
  input: "Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_3/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_3/Fill"
  op: "Fill"
  input: "gradients_3/Shape"
  input: "gradients_3/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/cost_3_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_3/cost_3_grad/Reshape"
  op: "Reshape"
  input: "gradients_3/Fill"
  input: "gradients_3/cost_3_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/cost_3_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_3/cost_3_grad/Tile"
  op: "Tile"
  input: "gradients_3/cost_3_grad/Reshape"
  input: "gradients_3/cost_3_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/cost_3_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 4.0
      }
    }
  }
}
node {
  name: "gradients_3/cost_3_grad/truediv"
  op: "RealDiv"
  input: "gradients_3/cost_3_grad/Tile"
  input: "gradients_3/cost_3_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/Mul_3_grad/Mul"
  op: "Mul"
  input: "gradients_3/cost_3_grad/truediv"
  input: "sub_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/Mul_3_grad/Mul_1"
  op: "Mul"
  input: "gradients_3/cost_3_grad/truediv"
  input: "sub_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/Mul_3_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/Mul_3_grad/Mul"
  input: "^gradients_3/Mul_3_grad/Mul_1"
}
node {
  name: "gradients_3/Mul_3_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/Mul_3_grad/Mul"
  input: "^gradients_3/Mul_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Mul_3_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_3/Mul_3_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/Mul_3_grad/Mul_1"
  input: "^gradients_3/Mul_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Mul_3_grad/Mul_1"
      }
    }
  }
}
node {
  name: "gradients_3/AddN"
  op: "AddN"
  input: "gradients_3/Mul_3_grad/tuple/control_dependency"
  input: "gradients_3/Mul_3_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Mul_3_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_3/sub_3_grad/Neg"
  op: "Neg"
  input: "gradients_3/AddN"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/sub_3_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/AddN"
  input: "^gradients_3/sub_3_grad/Neg"
}
node {
  name: "gradients_3/sub_3_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/AddN"
  input: "^gradients_3/sub_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Mul_3_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_3/sub_3_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/sub_3_grad/Neg"
  input: "^gradients_3/sub_3_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/sub_3_grad/Neg"
      }
    }
  }
}
node {
  name: "gradients_3/Add_8_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_3/Add_8_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_3/Add_8_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_3/Add_8_grad/Shape"
  input: "gradients_3/Add_8_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Add_8_grad/Sum"
  op: "Sum"
  input: "gradients_3/sub_3_grad/tuple/control_dependency_1"
  input: "gradients_3/Add_8_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/Add_8_grad/Reshape"
  op: "Reshape"
  input: "gradients_3/Add_8_grad/Sum"
  input: "gradients_3/Add_8_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Add_8_grad/Sum_1"
  op: "Sum"
  input: "gradients_3/sub_3_grad/tuple/control_dependency_1"
  input: "gradients_3/Add_8_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/Add_8_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_3/Add_8_grad/Sum_1"
  input: "gradients_3/Add_8_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Add_8_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/Add_8_grad/Reshape"
  input: "^gradients_3/Add_8_grad/Reshape_1"
}
node {
  name: "gradients_3/Add_8_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/Add_8_grad/Reshape"
  input: "^gradients_3/Add_8_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Add_8_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_3/Add_8_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/Add_8_grad/Reshape_1"
  input: "^gradients_3/Add_8_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Add_8_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_3/MatMul_8_grad/MatMul"
  op: "MatMul"
  input: "gradients_3/Add_8_grad/tuple/control_dependency"
  input: "Variable_17/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_3/MatMul_8_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_2"
  input: "gradients_3/Add_8_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/MatMul_8_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/MatMul_8_grad/MatMul"
  input: "^gradients_3/MatMul_8_grad/MatMul_1"
}
node {
  name: "gradients_3/MatMul_8_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/MatMul_8_grad/MatMul"
  input: "^gradients_3/MatMul_8_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/MatMul_8_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_3/MatMul_8_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/MatMul_8_grad/MatMul_1"
  input: "^gradients_3/MatMul_8_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/MatMul_8_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_3/Sigmoid_2_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_2"
  input: "gradients_3/MatMul_8_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_3/Add_7_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_3/Add_7_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_3/Add_7_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_3/Add_7_grad/Shape"
  input: "gradients_3/Add_7_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Add_7_grad/Sum"
  op: "Sum"
  input: "gradients_3/Sigmoid_2_grad/SigmoidGrad"
  input: "gradients_3/Add_7_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/Add_7_grad/Reshape"
  op: "Reshape"
  input: "gradients_3/Add_7_grad/Sum"
  input: "gradients_3/Add_7_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Add_7_grad/Sum_1"
  op: "Sum"
  input: "gradients_3/Sigmoid_2_grad/SigmoidGrad"
  input: "gradients_3/Add_7_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/Add_7_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_3/Add_7_grad/Sum_1"
  input: "gradients_3/Add_7_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_3/Add_7_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/Add_7_grad/Reshape"
  input: "^gradients_3/Add_7_grad/Reshape_1"
}
node {
  name: "gradients_3/Add_7_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/Add_7_grad/Reshape"
  input: "^gradients_3/Add_7_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Add_7_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_3/Add_7_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/Add_7_grad/Reshape_1"
  input: "^gradients_3/Add_7_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/Add_7_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_3/MatMul_7_grad/MatMul"
  op: "MatMul"
  input: "gradients_3/Add_7_grad/tuple/control_dependency"
  input: "Variable_16/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_3/MatMul_7_grad/MatMul_1"
  op: "MatMul"
  input: "x-input_4"
  input: "gradients_3/Add_7_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_3/MatMul_7_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_3/MatMul_7_grad/MatMul"
  input: "^gradients_3/MatMul_7_grad/MatMul_1"
}
node {
  name: "gradients_3/MatMul_7_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_3/MatMul_7_grad/MatMul"
  input: "^gradients_3/MatMul_7_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/MatMul_7_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_3/MatMul_7_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_3/MatMul_7_grad/MatMul_1"
  input: "^gradients_3/MatMul_7_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_3/MatMul_7_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "GradientDescent_3/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "GradientDescent_3/update_Variable_16/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_16"
  input: "GradientDescent_3/learning_rate"
  input: "gradients_3/MatMul_7_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_16"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_3/update_Variable_17/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_17"
  input: "GradientDescent_3/learning_rate"
  input: "gradients_3/MatMul_8_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_17"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_3/update_Variable_18/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_18"
  input: "GradientDescent_3/learning_rate"
  input: "gradients_3/Add_7_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_18"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_3/update_Variable_19/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_19"
  input: "GradientDescent_3/learning_rate"
  input: "gradients_3/Add_8_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_19"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_3"
  op: "NoOp"
  input: "^GradientDescent_3/update_Variable_16/ApplyGradientDescent"
  input: "^GradientDescent_3/update_Variable_17/ApplyGradientDescent"
  input: "^GradientDescent_3/update_Variable_18/ApplyGradientDescent"
  input: "^GradientDescent_3/update_Variable_19/ApplyGradientDescent"
}
node {
  name: "init_3"
  op: "NoOp"
  input: "^Variable/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_12/Assign"
  input: "^Variable_13/Assign"
  input: "^Variable_14/Assign"
  input: "^Variable_15/Assign"
  input: "^Variable_16/Assign"
  input: "^Variable_17/Assign"
  input: "^Variable_18/Assign"
  input: "^Variable_19/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Assign"
}
node {
  name: "x-input_5"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 2
        }
      }
    }
  }
}
node {
  name: "y-input_5"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 1
        }
      }
    }
  }
}
node {
  name: "random_uniform_10/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_10/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_10/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_10/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_10/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_10/sub"
  op: "Sub"
  input: "random_uniform_10/max"
  input: "random_uniform_10/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_10/mul"
  op: "Mul"
  input: "random_uniform_10/RandomUniform"
  input: "random_uniform_10/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_10"
  op: "Add"
  input: "random_uniform_10/mul"
  input: "random_uniform_10/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_20"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_20/Assign"
  op: "Assign"
  input: "Variable_20"
  input: "random_uniform_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_20/read"
  op: "Identity"
  input: "Variable_20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
}
node {
  name: "random_uniform_11/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_11/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_11/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_11/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_11/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_11/sub"
  op: "Sub"
  input: "random_uniform_11/max"
  input: "random_uniform_11/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_11/mul"
  op: "Mul"
  input: "random_uniform_11/RandomUniform"
  input: "random_uniform_11/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_11"
  op: "Add"
  input: "random_uniform_11/mul"
  input: "random_uniform_11/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_21"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_21/Assign"
  op: "Assign"
  input: "Variable_21"
  input: "random_uniform_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_21/read"
  op: "Identity"
  input: "Variable_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
}
node {
  name: "zeros_10"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 2
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_22"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_22/Assign"
  op: "Assign"
  input: "Variable_22"
  input: "zeros_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_22/read"
  op: "Identity"
  input: "Variable_22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
}
node {
  name: "zeros_11"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_23"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_23/Assign"
  op: "Assign"
  input: "Variable_23"
  input: "zeros_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_23/read"
  op: "Identity"
  input: "Variable_23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
}
node {
  name: "MatMul_9"
  op: "MatMul"
  input: "x-input_5"
  input: "Variable_20/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_9"
  op: "Add"
  input: "MatMul_9"
  input: "Variable_22/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_3"
  op: "Sigmoid"
  input: "Add_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_10"
  op: "MatMul"
  input: "Sigmoid_3"
  input: "Variable_21/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_10"
  op: "Add"
  input: "MatMul_10"
  input: "Variable_23/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_4"
  op: "Sigmoid"
  input: "Add_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "sub_4"
  op: "Sub"
  input: "y-input_5"
  input: "Sigmoid_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Mul_4"
  op: "Mul"
  input: "sub_4"
  input: "sub_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_4"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "cost_4"
  op: "Mean"
  input: "Mul_4"
  input: "Const_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_4/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_4/Fill"
  op: "Fill"
  input: "gradients_4/Shape"
  input: "gradients_4/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/cost_4_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_4/cost_4_grad/Reshape"
  op: "Reshape"
  input: "gradients_4/Fill"
  input: "gradients_4/cost_4_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/cost_4_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_4/cost_4_grad/Tile"
  op: "Tile"
  input: "gradients_4/cost_4_grad/Reshape"
  input: "gradients_4/cost_4_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/cost_4_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 4.0
      }
    }
  }
}
node {
  name: "gradients_4/cost_4_grad/truediv"
  op: "RealDiv"
  input: "gradients_4/cost_4_grad/Tile"
  input: "gradients_4/cost_4_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/Mul_4_grad/Mul"
  op: "Mul"
  input: "gradients_4/cost_4_grad/truediv"
  input: "sub_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/Mul_4_grad/Mul_1"
  op: "Mul"
  input: "gradients_4/cost_4_grad/truediv"
  input: "sub_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/Mul_4_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/Mul_4_grad/Mul"
  input: "^gradients_4/Mul_4_grad/Mul_1"
}
node {
  name: "gradients_4/Mul_4_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/Mul_4_grad/Mul"
  input: "^gradients_4/Mul_4_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Mul_4_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_4/Mul_4_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/Mul_4_grad/Mul_1"
  input: "^gradients_4/Mul_4_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Mul_4_grad/Mul_1"
      }
    }
  }
}
node {
  name: "gradients_4/AddN"
  op: "AddN"
  input: "gradients_4/Mul_4_grad/tuple/control_dependency"
  input: "gradients_4/Mul_4_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Mul_4_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_4/sub_4_grad/Neg"
  op: "Neg"
  input: "gradients_4/AddN"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/sub_4_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/AddN"
  input: "^gradients_4/sub_4_grad/Neg"
}
node {
  name: "gradients_4/sub_4_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/AddN"
  input: "^gradients_4/sub_4_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Mul_4_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_4/sub_4_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/sub_4_grad/Neg"
  input: "^gradients_4/sub_4_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/sub_4_grad/Neg"
      }
    }
  }
}
node {
  name: "gradients_4/Sigmoid_4_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_4"
  input: "gradients_4/sub_4_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/Add_10_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_4/Add_10_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_4/Add_10_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_4/Add_10_grad/Shape"
  input: "gradients_4/Add_10_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Add_10_grad/Sum"
  op: "Sum"
  input: "gradients_4/Sigmoid_4_grad/SigmoidGrad"
  input: "gradients_4/Add_10_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/Add_10_grad/Reshape"
  op: "Reshape"
  input: "gradients_4/Add_10_grad/Sum"
  input: "gradients_4/Add_10_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Add_10_grad/Sum_1"
  op: "Sum"
  input: "gradients_4/Sigmoid_4_grad/SigmoidGrad"
  input: "gradients_4/Add_10_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/Add_10_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_4/Add_10_grad/Sum_1"
  input: "gradients_4/Add_10_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Add_10_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/Add_10_grad/Reshape"
  input: "^gradients_4/Add_10_grad/Reshape_1"
}
node {
  name: "gradients_4/Add_10_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/Add_10_grad/Reshape"
  input: "^gradients_4/Add_10_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Add_10_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_4/Add_10_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/Add_10_grad/Reshape_1"
  input: "^gradients_4/Add_10_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Add_10_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_4/MatMul_10_grad/MatMul"
  op: "MatMul"
  input: "gradients_4/Add_10_grad/tuple/control_dependency"
  input: "Variable_21/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_4/MatMul_10_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_3"
  input: "gradients_4/Add_10_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/MatMul_10_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/MatMul_10_grad/MatMul"
  input: "^gradients_4/MatMul_10_grad/MatMul_1"
}
node {
  name: "gradients_4/MatMul_10_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/MatMul_10_grad/MatMul"
  input: "^gradients_4/MatMul_10_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/MatMul_10_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_4/MatMul_10_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/MatMul_10_grad/MatMul_1"
  input: "^gradients_4/MatMul_10_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/MatMul_10_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_4/Sigmoid_3_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_3"
  input: "gradients_4/MatMul_10_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_4/Add_9_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_4/Add_9_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_4/Add_9_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_4/Add_9_grad/Shape"
  input: "gradients_4/Add_9_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Add_9_grad/Sum"
  op: "Sum"
  input: "gradients_4/Sigmoid_3_grad/SigmoidGrad"
  input: "gradients_4/Add_9_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/Add_9_grad/Reshape"
  op: "Reshape"
  input: "gradients_4/Add_9_grad/Sum"
  input: "gradients_4/Add_9_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Add_9_grad/Sum_1"
  op: "Sum"
  input: "gradients_4/Sigmoid_3_grad/SigmoidGrad"
  input: "gradients_4/Add_9_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/Add_9_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_4/Add_9_grad/Sum_1"
  input: "gradients_4/Add_9_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_4/Add_9_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/Add_9_grad/Reshape"
  input: "^gradients_4/Add_9_grad/Reshape_1"
}
node {
  name: "gradients_4/Add_9_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/Add_9_grad/Reshape"
  input: "^gradients_4/Add_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Add_9_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_4/Add_9_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/Add_9_grad/Reshape_1"
  input: "^gradients_4/Add_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/Add_9_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_4/MatMul_9_grad/MatMul"
  op: "MatMul"
  input: "gradients_4/Add_9_grad/tuple/control_dependency"
  input: "Variable_20/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_4/MatMul_9_grad/MatMul_1"
  op: "MatMul"
  input: "x-input_5"
  input: "gradients_4/Add_9_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_4/MatMul_9_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_4/MatMul_9_grad/MatMul"
  input: "^gradients_4/MatMul_9_grad/MatMul_1"
}
node {
  name: "gradients_4/MatMul_9_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_4/MatMul_9_grad/MatMul"
  input: "^gradients_4/MatMul_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/MatMul_9_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_4/MatMul_9_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_4/MatMul_9_grad/MatMul_1"
  input: "^gradients_4/MatMul_9_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_4/MatMul_9_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "GradientDescent_4/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "GradientDescent_4/update_Variable_20/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_20"
  input: "GradientDescent_4/learning_rate"
  input: "gradients_4/MatMul_9_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_20"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_4/update_Variable_21/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_21"
  input: "GradientDescent_4/learning_rate"
  input: "gradients_4/MatMul_10_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_21"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_4/update_Variable_22/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_22"
  input: "GradientDescent_4/learning_rate"
  input: "gradients_4/Add_9_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_22"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_4/update_Variable_23/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_23"
  input: "GradientDescent_4/learning_rate"
  input: "gradients_4/Add_10_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_23"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_4"
  op: "NoOp"
  input: "^GradientDescent_4/update_Variable_20/ApplyGradientDescent"
  input: "^GradientDescent_4/update_Variable_21/ApplyGradientDescent"
  input: "^GradientDescent_4/update_Variable_22/ApplyGradientDescent"
  input: "^GradientDescent_4/update_Variable_23/ApplyGradientDescent"
}
node {
  name: "init_4"
  op: "NoOp"
  input: "^Variable/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_12/Assign"
  input: "^Variable_13/Assign"
  input: "^Variable_14/Assign"
  input: "^Variable_15/Assign"
  input: "^Variable_16/Assign"
  input: "^Variable_17/Assign"
  input: "^Variable_18/Assign"
  input: "^Variable_19/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_20/Assign"
  input: "^Variable_21/Assign"
  input: "^Variable_22/Assign"
  input: "^Variable_23/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Assign"
}
node {
  name: "x-input_6"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 2
        }
      }
    }
  }
}
node {
  name: "y-input_6"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 4
        }
        dim {
          size: 1
        }
      }
    }
  }
}
node {
  name: "random_uniform_12/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_12/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_12/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_12/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_12/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_12/sub"
  op: "Sub"
  input: "random_uniform_12/max"
  input: "random_uniform_12/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_12/mul"
  op: "Mul"
  input: "random_uniform_12/RandomUniform"
  input: "random_uniform_12/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_12"
  op: "Add"
  input: "random_uniform_12/mul"
  input: "random_uniform_12/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_24"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_24/Assign"
  op: "Assign"
  input: "Variable_24"
  input: "random_uniform_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_24/read"
  op: "Identity"
  input: "Variable_24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
}
node {
  name: "random_uniform_13/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\002\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "random_uniform_13/min"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -1.0
      }
    }
  }
}
node {
  name: "random_uniform_13/max"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "random_uniform_13/RandomUniform"
  op: "RandomUniform"
  input: "random_uniform_13/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "random_uniform_13/sub"
  op: "Sub"
  input: "random_uniform_13/max"
  input: "random_uniform_13/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_13/mul"
  op: "Mul"
  input: "random_uniform_13/RandomUniform"
  input: "random_uniform_13/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "random_uniform_13"
  op: "Add"
  input: "random_uniform_13/mul"
  input: "random_uniform_13/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Variable_25"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_25/Assign"
  op: "Assign"
  input: "Variable_25"
  input: "random_uniform_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_25/read"
  op: "Identity"
  input: "Variable_25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
}
node {
  name: "zeros_12"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 2
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_26"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 2
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_26/Assign"
  op: "Assign"
  input: "Variable_26"
  input: "zeros_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_26/read"
  op: "Identity"
  input: "Variable_26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
}
node {
  name: "zeros_13"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Variable_27"
  op: "VariableV2"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Variable_27/Assign"
  op: "Assign"
  input: "Variable_27"
  input: "zeros_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Variable_27/read"
  op: "Identity"
  input: "Variable_27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
}
node {
  name: "MatMul_11"
  op: "MatMul"
  input: "x-input_6"
  input: "Variable_24/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_11"
  op: "Add"
  input: "MatMul_11"
  input: "Variable_26/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_5"
  op: "Sigmoid"
  input: "Add_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "MatMul_12"
  op: "MatMul"
  input: "Sigmoid_5"
  input: "Variable_25/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Add_12"
  op: "Add"
  input: "MatMul_12"
  input: "Variable_27/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sigmoid_6"
  op: "Sigmoid"
  input: "Add_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "sub_5"
  op: "Sub"
  input: "y-input_6"
  input: "Sigmoid_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Mul_5"
  op: "Mul"
  input: "sub_5"
  input: "sub_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Const_5"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "cost_5"
  op: "Mean"
  input: "Mul_5"
  input: "Const_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients_5/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients_5/Fill"
  op: "Fill"
  input: "gradients_5/Shape"
  input: "gradients_5/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/cost_5_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_5/cost_5_grad/Reshape"
  op: "Reshape"
  input: "gradients_5/Fill"
  input: "gradients_5/cost_5_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/cost_5_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_5/cost_5_grad/Tile"
  op: "Tile"
  input: "gradients_5/cost_5_grad/Reshape"
  input: "gradients_5/cost_5_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/cost_5_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 4.0
      }
    }
  }
}
node {
  name: "gradients_5/cost_5_grad/truediv"
  op: "RealDiv"
  input: "gradients_5/cost_5_grad/Tile"
  input: "gradients_5/cost_5_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/Mul_5_grad/Mul"
  op: "Mul"
  input: "gradients_5/cost_5_grad/truediv"
  input: "sub_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/Mul_5_grad/Mul_1"
  op: "Mul"
  input: "gradients_5/cost_5_grad/truediv"
  input: "sub_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/Mul_5_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/Mul_5_grad/Mul"
  input: "^gradients_5/Mul_5_grad/Mul_1"
}
node {
  name: "gradients_5/Mul_5_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/Mul_5_grad/Mul"
  input: "^gradients_5/Mul_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Mul_5_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_5/Mul_5_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/Mul_5_grad/Mul_1"
  input: "^gradients_5/Mul_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Mul_5_grad/Mul_1"
      }
    }
  }
}
node {
  name: "gradients_5/AddN"
  op: "AddN"
  input: "gradients_5/Mul_5_grad/tuple/control_dependency"
  input: "gradients_5/Mul_5_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Mul_5_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_5/sub_5_grad/Neg"
  op: "Neg"
  input: "gradients_5/AddN"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/sub_5_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/AddN"
  input: "^gradients_5/sub_5_grad/Neg"
}
node {
  name: "gradients_5/sub_5_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/AddN"
  input: "^gradients_5/sub_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Mul_5_grad/Mul"
      }
    }
  }
}
node {
  name: "gradients_5/sub_5_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/sub_5_grad/Neg"
  input: "^gradients_5/sub_5_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/sub_5_grad/Neg"
      }
    }
  }
}
node {
  name: "gradients_5/Sigmoid_6_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_6"
  input: "gradients_5/sub_5_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/Add_12_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_5/Add_12_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients_5/Add_12_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_5/Add_12_grad/Shape"
  input: "gradients_5/Add_12_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Add_12_grad/Sum"
  op: "Sum"
  input: "gradients_5/Sigmoid_6_grad/SigmoidGrad"
  input: "gradients_5/Add_12_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/Add_12_grad/Reshape"
  op: "Reshape"
  input: "gradients_5/Add_12_grad/Sum"
  input: "gradients_5/Add_12_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Add_12_grad/Sum_1"
  op: "Sum"
  input: "gradients_5/Sigmoid_6_grad/SigmoidGrad"
  input: "gradients_5/Add_12_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/Add_12_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_5/Add_12_grad/Sum_1"
  input: "gradients_5/Add_12_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Add_12_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/Add_12_grad/Reshape"
  input: "^gradients_5/Add_12_grad/Reshape_1"
}
node {
  name: "gradients_5/Add_12_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/Add_12_grad/Reshape"
  input: "^gradients_5/Add_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Add_12_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_5/Add_12_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/Add_12_grad/Reshape_1"
  input: "^gradients_5/Add_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Add_12_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_5/MatMul_12_grad/MatMul"
  op: "MatMul"
  input: "gradients_5/Add_12_grad/tuple/control_dependency"
  input: "Variable_25/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_5/MatMul_12_grad/MatMul_1"
  op: "MatMul"
  input: "Sigmoid_5"
  input: "gradients_5/Add_12_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/MatMul_12_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/MatMul_12_grad/MatMul"
  input: "^gradients_5/MatMul_12_grad/MatMul_1"
}
node {
  name: "gradients_5/MatMul_12_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/MatMul_12_grad/MatMul"
  input: "^gradients_5/MatMul_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/MatMul_12_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_5/MatMul_12_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/MatMul_12_grad/MatMul_1"
  input: "^gradients_5/MatMul_12_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/MatMul_12_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients_5/Sigmoid_5_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "Sigmoid_5"
  input: "gradients_5/MatMul_12_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients_5/Add_11_grad/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\004\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "gradients_5/Add_11_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients_5/Add_11_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients_5/Add_11_grad/Shape"
  input: "gradients_5/Add_11_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Add_11_grad/Sum"
  op: "Sum"
  input: "gradients_5/Sigmoid_5_grad/SigmoidGrad"
  input: "gradients_5/Add_11_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/Add_11_grad/Reshape"
  op: "Reshape"
  input: "gradients_5/Add_11_grad/Sum"
  input: "gradients_5/Add_11_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Add_11_grad/Sum_1"
  op: "Sum"
  input: "gradients_5/Sigmoid_5_grad/SigmoidGrad"
  input: "gradients_5/Add_11_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/Add_11_grad/Reshape_1"
  op: "Reshape"
  input: "gradients_5/Add_11_grad/Sum_1"
  input: "gradients_5/Add_11_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients_5/Add_11_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/Add_11_grad/Reshape"
  input: "^gradients_5/Add_11_grad/Reshape_1"
}
node {
  name: "gradients_5/Add_11_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/Add_11_grad/Reshape"
  input: "^gradients_5/Add_11_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Add_11_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients_5/Add_11_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/Add_11_grad/Reshape_1"
  input: "^gradients_5/Add_11_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/Add_11_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients_5/MatMul_11_grad/MatMul"
  op: "MatMul"
  input: "gradients_5/Add_11_grad/tuple/control_dependency"
  input: "Variable_24/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients_5/MatMul_11_grad/MatMul_1"
  op: "MatMul"
  input: "x-input_6"
  input: "gradients_5/Add_11_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients_5/MatMul_11_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients_5/MatMul_11_grad/MatMul"
  input: "^gradients_5/MatMul_11_grad/MatMul_1"
}
node {
  name: "gradients_5/MatMul_11_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients_5/MatMul_11_grad/MatMul"
  input: "^gradients_5/MatMul_11_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/MatMul_11_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients_5/MatMul_11_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients_5/MatMul_11_grad/MatMul_1"
  input: "^gradients_5/MatMul_11_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients_5/MatMul_11_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "GradientDescent_5/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "GradientDescent_5/update_Variable_24/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_24"
  input: "GradientDescent_5/learning_rate"
  input: "gradients_5/MatMul_11_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_24"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_5/update_Variable_25/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_25"
  input: "GradientDescent_5/learning_rate"
  input: "gradients_5/MatMul_12_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_25"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_5/update_Variable_26/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_26"
  input: "GradientDescent_5/learning_rate"
  input: "gradients_5/Add_11_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_26"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_5/update_Variable_27/ApplyGradientDescent"
  op: "ApplyGradientDescent"
  input: "Variable_27"
  input: "GradientDescent_5/learning_rate"
  input: "gradients_5/Add_12_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Variable_27"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "GradientDescent_5"
  op: "NoOp"
  input: "^GradientDescent_5/update_Variable_24/ApplyGradientDescent"
  input: "^GradientDescent_5/update_Variable_25/ApplyGradientDescent"
  input: "^GradientDescent_5/update_Variable_26/ApplyGradientDescent"
  input: "^GradientDescent_5/update_Variable_27/ApplyGradientDescent"
}
node {
  name: "init_5"
  op: "NoOp"
  input: "^Variable/Assign"
  input: "^Variable_1/Assign"
  input: "^Variable_10/Assign"
  input: "^Variable_11/Assign"
  input: "^Variable_12/Assign"
  input: "^Variable_13/Assign"
  input: "^Variable_14/Assign"
  input: "^Variable_15/Assign"
  input: "^Variable_16/Assign"
  input: "^Variable_17/Assign"
  input: "^Variable_18/Assign"
  input: "^Variable_19/Assign"
  input: "^Variable_2/Assign"
  input: "^Variable_20/Assign"
  input: "^Variable_21/Assign"
  input: "^Variable_22/Assign"
  input: "^Variable_23/Assign"
  input: "^Variable_24/Assign"
  input: "^Variable_25/Assign"
  input: "^Variable_26/Assign"
  input: "^Variable_27/Assign"
  input: "^Variable_3/Assign"
  input: "^Variable_4/Assign"
  input: "^Variable_5/Assign"
  input: "^Variable_6/Assign"
  input: "^Variable_7/Assign"
  input: "^Variable_8/Assign"
  input: "^Variable_9/Assign"
}
versions {
  producer: 26
}
