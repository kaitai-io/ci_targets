// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type SwitchManualEnumInvalidElse struct {
	Opcodes []*SwitchManualEnumInvalidElse_Opcode
	_io *kaitai.Stream
	_root *SwitchManualEnumInvalidElse
	_parent interface{}
}
func NewSwitchManualEnumInvalidElse() *SwitchManualEnumInvalidElse {
	return &SwitchManualEnumInvalidElse{
	}
}

func (this *SwitchManualEnumInvalidElse) Read(io *kaitai.Stream, parent interface{}, root *SwitchManualEnumInvalidElse) (err error) {
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
		tmp2 := NewSwitchManualEnumInvalidElse_Opcode()
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Opcodes = append(this.Opcodes, tmp2)
	}
	return err
}

type SwitchManualEnumInvalidElse_Opcode_CodeEnum int
const (
	SwitchManualEnumInvalidElse_Opcode_CodeEnum__Intval SwitchManualEnumInvalidElse_Opcode_CodeEnum = 73
	SwitchManualEnumInvalidElse_Opcode_CodeEnum__Strval SwitchManualEnumInvalidElse_Opcode_CodeEnum = 83
)
type SwitchManualEnumInvalidElse_Opcode struct {
	Code SwitchManualEnumInvalidElse_Opcode_CodeEnum
	Body interface{}
	_io *kaitai.Stream
	_root *SwitchManualEnumInvalidElse
	_parent *SwitchManualEnumInvalidElse
}
func NewSwitchManualEnumInvalidElse_Opcode() *SwitchManualEnumInvalidElse_Opcode {
	return &SwitchManualEnumInvalidElse_Opcode{
	}
}

func (this *SwitchManualEnumInvalidElse_Opcode) Read(io *kaitai.Stream, parent *SwitchManualEnumInvalidElse, root *SwitchManualEnumInvalidElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = SwitchManualEnumInvalidElse_Opcode_CodeEnum(tmp3)
	switch (this.Code) {
	case SwitchManualEnumInvalidElse_Opcode_CodeEnum__Intval:
		tmp4 := NewSwitchManualEnumInvalidElse_Opcode_Intval()
		err = tmp4.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp4
	case SwitchManualEnumInvalidElse_Opcode_CodeEnum__Strval:
		tmp5 := NewSwitchManualEnumInvalidElse_Opcode_Strval()
		err = tmp5.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp5
	default:
		tmp6 := NewSwitchManualEnumInvalidElse_Opcode_Defval()
		err = tmp6.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp6
	}
	return err
}
type SwitchManualEnumInvalidElse_Opcode_Intval struct {
	Value uint8
	_io *kaitai.Stream
	_root *SwitchManualEnumInvalidElse
	_parent *SwitchManualEnumInvalidElse_Opcode
}
func NewSwitchManualEnumInvalidElse_Opcode_Intval() *SwitchManualEnumInvalidElse_Opcode_Intval {
	return &SwitchManualEnumInvalidElse_Opcode_Intval{
	}
}

func (this *SwitchManualEnumInvalidElse_Opcode_Intval) Read(io *kaitai.Stream, parent *SwitchManualEnumInvalidElse_Opcode, root *SwitchManualEnumInvalidElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp7, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Value = tmp7
	return err
}
type SwitchManualEnumInvalidElse_Opcode_Strval struct {
	Value string
	_io *kaitai.Stream
	_root *SwitchManualEnumInvalidElse
	_parent *SwitchManualEnumInvalidElse_Opcode
}
func NewSwitchManualEnumInvalidElse_Opcode_Strval() *SwitchManualEnumInvalidElse_Opcode_Strval {
	return &SwitchManualEnumInvalidElse_Opcode_Strval{
	}
}

func (this *SwitchManualEnumInvalidElse_Opcode_Strval) Read(io *kaitai.Stream, parent *SwitchManualEnumInvalidElse_Opcode, root *SwitchManualEnumInvalidElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp8, err := this._io.ReadBytesTerm(0, false, true, true)
	if err != nil {
		return err
	}
	this.Value = string(tmp8)
	return err
}
type SwitchManualEnumInvalidElse_Opcode_Defval struct {
	_io *kaitai.Stream
	_root *SwitchManualEnumInvalidElse
	_parent *SwitchManualEnumInvalidElse_Opcode
	_f_value bool
	value int8
}
func NewSwitchManualEnumInvalidElse_Opcode_Defval() *SwitchManualEnumInvalidElse_Opcode_Defval {
	return &SwitchManualEnumInvalidElse_Opcode_Defval{
	}
}

func (this *SwitchManualEnumInvalidElse_Opcode_Defval) Read(io *kaitai.Stream, parent *SwitchManualEnumInvalidElse_Opcode, root *SwitchManualEnumInvalidElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *SwitchManualEnumInvalidElse_Opcode_Defval) Value() (v int8, err error) {
	if (this._f_value) {
		return this.value, nil
	}
	this.value = int8(123)
	this._f_value = true
	return this.value, nil
}
