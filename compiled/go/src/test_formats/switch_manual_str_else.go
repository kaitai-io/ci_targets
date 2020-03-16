// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type SwitchManualStrElse struct {
	Opcodes []*SwitchManualStrElse_Opcode
	_io *kaitai.Stream
	_root *SwitchManualStrElse
	_parent interface{}
}

func (this *SwitchManualStrElse) Read(io *kaitai.Stream, parent interface{}, root *SwitchManualStrElse) (err error) {
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
		tmp2 := new(SwitchManualStrElse_Opcode)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Opcodes = append(this.Opcodes, tmp2)
	}
	return err
}
type SwitchManualStrElse_Opcode struct {
	Code string
	Body interface{}
	_io *kaitai.Stream
	_root *SwitchManualStrElse
	_parent *SwitchManualStrElse
}

func (this *SwitchManualStrElse_Opcode) Read(io *kaitai.Stream, parent *SwitchManualStrElse, root *SwitchManualStrElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytes(int(1))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this.Code = string(tmp3)
	switch (this.Code) {
	case "I":
		tmp4 := new(SwitchManualStrElse_Opcode_Intval)
		err = tmp4.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp4
	case "S":
		tmp5 := new(SwitchManualStrElse_Opcode_Strval)
		err = tmp5.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp5
	default:
		tmp6 := new(SwitchManualStrElse_Opcode_Noneval)
		err = tmp6.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp6
	}
	return err
}
type SwitchManualStrElse_Opcode_Intval struct {
	Value uint8
	_io *kaitai.Stream
	_root *SwitchManualStrElse
	_parent *SwitchManualStrElse_Opcode
}

func (this *SwitchManualStrElse_Opcode_Intval) Read(io *kaitai.Stream, parent *SwitchManualStrElse_Opcode, root *SwitchManualStrElse) (err error) {
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
type SwitchManualStrElse_Opcode_Strval struct {
	Value string
	_io *kaitai.Stream
	_root *SwitchManualStrElse
	_parent *SwitchManualStrElse_Opcode
}

func (this *SwitchManualStrElse_Opcode_Strval) Read(io *kaitai.Stream, parent *SwitchManualStrElse_Opcode, root *SwitchManualStrElse) (err error) {
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
type SwitchManualStrElse_Opcode_Noneval struct {
	Filler uint32
	_io *kaitai.Stream
	_root *SwitchManualStrElse
	_parent *SwitchManualStrElse_Opcode
}

func (this *SwitchManualStrElse_Opcode_Noneval) Read(io *kaitai.Stream, parent *SwitchManualStrElse_Opcode, root *SwitchManualStrElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp9, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Filler = uint32(tmp9)
	return err
}
