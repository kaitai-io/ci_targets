// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type SwitchManualEnum struct {
	Opcodes []*SwitchManualEnum_Opcode
	_io *kaitai.Stream
	_root *SwitchManualEnum
	_parent interface{}
}
func NewSwitchManualEnum() *SwitchManualEnum {
	return &SwitchManualEnum{
	}
}

func (this *SwitchManualEnum) Read(io *kaitai.Stream, parent interface{}, root *SwitchManualEnum) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for i := 1;; i++ {
		tmp1, err := this._io.EOF()
		if err != nil {
			return err
		}
		if tmp1 {
			break
		}
		tmp2 := NewSwitchManualEnum_Opcode()
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Opcodes = append(this.Opcodes, tmp2)
	}
	return err
}

type SwitchManualEnum_Opcode_CodeEnum int
const (
	SwitchManualEnum_Opcode_CodeEnum__Intval SwitchManualEnum_Opcode_CodeEnum = 73
	SwitchManualEnum_Opcode_CodeEnum__Strval SwitchManualEnum_Opcode_CodeEnum = 83
)
type SwitchManualEnum_Opcode struct {
	Code SwitchManualEnum_Opcode_CodeEnum
	Body interface{}
	_io *kaitai.Stream
	_root *SwitchManualEnum
	_parent *SwitchManualEnum
}
func NewSwitchManualEnum_Opcode() *SwitchManualEnum_Opcode {
	return &SwitchManualEnum_Opcode{
	}
}

func (this *SwitchManualEnum_Opcode) Read(io *kaitai.Stream, parent *SwitchManualEnum, root *SwitchManualEnum) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = SwitchManualEnum_Opcode_CodeEnum(tmp3)
	switch (this.Code) {
	case SwitchManualEnum_Opcode_CodeEnum__Intval:
		tmp4 := NewSwitchManualEnum_Opcode_Intval()
		err = tmp4.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp4
	case SwitchManualEnum_Opcode_CodeEnum__Strval:
		tmp5 := NewSwitchManualEnum_Opcode_Strval()
		err = tmp5.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp5
	}
	return err
}
type SwitchManualEnum_Opcode_Intval struct {
	Value uint8
	_io *kaitai.Stream
	_root *SwitchManualEnum
	_parent *SwitchManualEnum_Opcode
}
func NewSwitchManualEnum_Opcode_Intval() *SwitchManualEnum_Opcode_Intval {
	return &SwitchManualEnum_Opcode_Intval{
	}
}

func (this *SwitchManualEnum_Opcode_Intval) Read(io *kaitai.Stream, parent *SwitchManualEnum_Opcode, root *SwitchManualEnum) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Value = tmp6
	return err
}
type SwitchManualEnum_Opcode_Strval struct {
	Value string
	_io *kaitai.Stream
	_root *SwitchManualEnum
	_parent *SwitchManualEnum_Opcode
}
func NewSwitchManualEnum_Opcode_Strval() *SwitchManualEnum_Opcode_Strval {
	return &SwitchManualEnum_Opcode_Strval{
	}
}

func (this *SwitchManualEnum_Opcode_Strval) Read(io *kaitai.Stream, parent *SwitchManualEnum_Opcode, root *SwitchManualEnum) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp7, err := this._io.ReadBytesTerm(0, false, true, true)
	if err != nil {
		return err
	}
	this.Value = string(tmp7)
	return err
}
