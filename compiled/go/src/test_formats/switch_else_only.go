// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type SwitchElseOnly struct {
	Opcode int8
	PrimByte int8
	Indicator []byte
	Ut *SwitchElseOnly_Data
	_io *kaitai.Stream
	_root *SwitchElseOnly
	_parent interface{}
}
func NewSwitchElseOnly() *SwitchElseOnly {
	return &SwitchElseOnly{
	}
}

func (this *SwitchElseOnly) Read(io *kaitai.Stream, parent interface{}, root *SwitchElseOnly) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.Opcode = tmp1
	tmp2, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.PrimByte = tmp2
	tmp3, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this.Indicator = tmp3
	switch (true) {
	default:
		tmp4 := NewSwitchElseOnly_Data()
		err = tmp4.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Ut = tmp4
	}
	return err
}
type SwitchElseOnly_Data struct {
	Value []byte
	_io *kaitai.Stream
	_root *SwitchElseOnly
	_parent *SwitchElseOnly
}
func NewSwitchElseOnly_Data() *SwitchElseOnly_Data {
	return &SwitchElseOnly_Data{
	}
}

func (this *SwitchElseOnly_Data) Read(io *kaitai.Stream, parent *SwitchElseOnly, root *SwitchElseOnly) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp5 = tmp5
	this.Value = tmp5
	return err
}
