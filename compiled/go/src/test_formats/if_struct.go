// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type IfStruct struct {
	Op1 *IfStruct_Operation
	Op2 *IfStruct_Operation
	Op3 *IfStruct_Operation
	_io *kaitai.Stream
	_root *IfStruct
	_parent kaitai.Struct
}
func NewIfStruct() *IfStruct {
	return &IfStruct{
	}
}

func (this IfStruct) IO_() *kaitai.Stream {
	return this._io
}

func (this *IfStruct) Read(io *kaitai.Stream, parent kaitai.Struct, root *IfStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewIfStruct_Operation()
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Op1 = tmp1
	tmp2 := NewIfStruct_Operation()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Op2 = tmp2
	tmp3 := NewIfStruct_Operation()
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Op3 = tmp3
	return err
}
type IfStruct_ArgStr struct {
	Len uint8
	Str string
	_io *kaitai.Stream
	_root *IfStruct
	_parent *IfStruct_Operation
}
func NewIfStruct_ArgStr() *IfStruct_ArgStr {
	return &IfStruct_ArgStr{
	}
}

func (this IfStruct_ArgStr) IO_() *kaitai.Stream {
	return this._io
}

func (this *IfStruct_ArgStr) Read(io *kaitai.Stream, parent *IfStruct_Operation, root *IfStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Len = tmp4
	tmp5, err := this._io.ReadBytes(int(this.Len))
	if err != nil {
		return err
	}
	tmp5 = tmp5
	this.Str = string(tmp5)
	return err
}
type IfStruct_ArgTuple struct {
	Num1 uint8
	Num2 uint8
	_io *kaitai.Stream
	_root *IfStruct
	_parent *IfStruct_Operation
}
func NewIfStruct_ArgTuple() *IfStruct_ArgTuple {
	return &IfStruct_ArgTuple{
	}
}

func (this IfStruct_ArgTuple) IO_() *kaitai.Stream {
	return this._io
}

func (this *IfStruct_ArgTuple) Read(io *kaitai.Stream, parent *IfStruct_Operation, root *IfStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Num1 = tmp6
	tmp7, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Num2 = tmp7
	return err
}
type IfStruct_Operation struct {
	Opcode uint8
	ArgTuple *IfStruct_ArgTuple
	ArgStr *IfStruct_ArgStr
	_io *kaitai.Stream
	_root *IfStruct
	_parent *IfStruct
}
func NewIfStruct_Operation() *IfStruct_Operation {
	return &IfStruct_Operation{
	}
}

func (this IfStruct_Operation) IO_() *kaitai.Stream {
	return this._io
}

func (this *IfStruct_Operation) Read(io *kaitai.Stream, parent *IfStruct, root *IfStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp8, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Opcode = tmp8
	if (this.Opcode == 84) {
		tmp9 := NewIfStruct_ArgTuple()
		err = tmp9.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.ArgTuple = tmp9
	}
	if (this.Opcode == 83) {
		tmp10 := NewIfStruct_ArgStr()
		err = tmp10.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.ArgStr = tmp10
	}
	return err
}
