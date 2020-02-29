// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type SwitchDefaultOnly struct {
	Opcode int8
	Byte int8
	Struct *SwitchDefaultOnly_Data
	StructSized *SwitchDefaultOnly_Data
	_io *kaitai.Stream
	_root *SwitchDefaultOnly
	_parent interface{}
	_raw_StructSized []byte
}

func (this *SwitchDefaultOnly) Read(io *kaitai.Stream, parent interface{}, root *SwitchDefaultOnly) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.Opcode = tmp1
	switch (this.Opcode) {
	default:
		tmp2, err := this._io.ReadS1()
		if err != nil {
			return err
		}
		this.Byte = tmp2
	}
	switch (this.Opcode) {
	default:
		tmp3 := new(SwitchDefaultOnly_Data)
		err = tmp3.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Struct = tmp3
	}
	switch (this.Opcode) {
	default:
		tmp4, err := this._io.ReadBytes(int(4))
		if err != nil {
			return err
		}
		tmp4 = tmp4
		this._raw_StructSized = tmp4
		_io__raw_StructSized := kaitai.NewStream(bytes.NewReader(this._raw_StructSized))
		tmp5 := new(SwitchDefaultOnly_Data)
		err = tmp5.Read(_io__raw_StructSized, this, this._root)
		if err != nil {
			return err
		}
		this.StructSized = tmp5
	}
	return err
}
type SwitchDefaultOnly_Data struct {
	Value []byte
	_io *kaitai.Stream
	_root *SwitchDefaultOnly
	_parent *SwitchDefaultOnly
}

func (this *SwitchDefaultOnly_Data) Read(io *kaitai.Stream, parent *SwitchDefaultOnly, root *SwitchDefaultOnly) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp6 = tmp6
	this.Value = tmp6
	return err
}
