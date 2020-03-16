// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type SwitchManualEnumInvalid struct {
	Opcodes []*SwitchManualEnumInvalid_Opcode
	_io *kaitai.Stream
	_root *SwitchManualEnumInvalid
	_parent interface{}
}

func (this *SwitchManualEnumInvalid) Read(io *kaitai.Stream, parent interface{}, root *SwitchManualEnumInvalid) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for {
		tmp1, err := this._io.EOF()
		if err != nil {
			return err
		}
		if tmp1 {
			break
		}
		tmp2 := new(SwitchManualEnumInvalid_Opcode)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Opcodes = append(this.Opcodes, tmp2)
	}
	return err
}

type SwitchManualEnumInvalid_Opcode_CodeEnum int
const (
	SwitchManualEnumInvalid_Opcode_CodeEnum__Intval SwitchManualEnumInvalid_Opcode_CodeEnum = 73
	SwitchManualEnumInvalid_Opcode_CodeEnum__Strval SwitchManualEnumInvalid_Opcode_CodeEnum = 83
)
type SwitchManualEnumInvalid_Opcode struct {
	Code SwitchManualEnumInvalid_Opcode_CodeEnum
	Body interface{}
	_io *kaitai.Stream
	_root *SwitchManualEnumInvalid
	_parent *SwitchManualEnumInvalid
}

func (this *SwitchManualEnumInvalid_Opcode) Read(io *kaitai.Stream, parent *SwitchManualEnumInvalid, root *SwitchManualEnumInvalid) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = SwitchManualEnumInvalid_Opcode_CodeEnum(tmp3)
	switch (this.Code) {
	case SwitchManualEnumInvalid_Opcode_CodeEnum__Intval:
		tmp4 := new(SwitchManualEnumInvalid_Opcode_Intval)
		err = tmp4.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp4
	case SwitchManualEnumInvalid_Opcode_CodeEnum__Strval:
		tmp5 := new(SwitchManualEnumInvalid_Opcode_Strval)
		err = tmp5.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp5
	}
	return err
}
type SwitchManualEnumInvalid_Opcode_Intval struct {
	Value uint8
	_io *kaitai.Stream
	_root *SwitchManualEnumInvalid
	_parent *SwitchManualEnumInvalid_Opcode
}

func (this *SwitchManualEnumInvalid_Opcode_Intval) Read(io *kaitai.Stream, parent *SwitchManualEnumInvalid_Opcode, root *SwitchManualEnumInvalid) (err error) {
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
type SwitchManualEnumInvalid_Opcode_Strval struct {
	Value string
	_io *kaitai.Stream
	_root *SwitchManualEnumInvalid
	_parent *SwitchManualEnumInvalid_Opcode
}

func (this *SwitchManualEnumInvalid_Opcode_Strval) Read(io *kaitai.Stream, parent *SwitchManualEnumInvalid_Opcode, root *SwitchManualEnumInvalid) (err error) {
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
