// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type SwitchManualStr struct {
	Opcodes []*SwitchManualStr_Opcode
	_io *kaitai.Stream
	_root *SwitchManualStr
	_parent interface{}
}

func (this *SwitchManualStr) Read(io *kaitai.Stream, parent interface{}, root *SwitchManualStr) (err error) {
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
		tmp2 := new(SwitchManualStr_Opcode)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Opcodes = append(this.Opcodes, tmp2)
	}
	return err
}
type SwitchManualStr_Opcode struct {
	Code string
	Body interface{}
	_io *kaitai.Stream
	_root *SwitchManualStr
	_parent *SwitchManualStr
}

func (this *SwitchManualStr_Opcode) Read(io *kaitai.Stream, parent *SwitchManualStr, root *SwitchManualStr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytes(int(1))
	if err != nil {
		return err
	}
	this.Code = string(tmp3)
	switch (this.Code) {
	case "I":
		tmp4 := new(SwitchManualStr_Opcode_Intval)
		err = tmp4.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp4
	case "S":
		tmp5 := new(SwitchManualStr_Opcode_Strval)
		err = tmp5.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp5
	}
	return err
}
type SwitchManualStr_Opcode_Intval struct {
	Value uint8
	_io *kaitai.Stream
	_root *SwitchManualStr
	_parent *SwitchManualStr_Opcode
}

func (this *SwitchManualStr_Opcode_Intval) Read(io *kaitai.Stream, parent *SwitchManualStr_Opcode, root *SwitchManualStr) (err error) {
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
type SwitchManualStr_Opcode_Strval struct {
	Value string
	_io *kaitai.Stream
	_root *SwitchManualStr
	_parent *SwitchManualStr_Opcode
}

func (this *SwitchManualStr_Opcode_Strval) Read(io *kaitai.Stream, parent *SwitchManualStr_Opcode, root *SwitchManualStr) (err error) {
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
