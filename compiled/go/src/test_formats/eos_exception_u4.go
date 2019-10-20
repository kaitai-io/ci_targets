// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type EosExceptionU4 struct {
	Envelope *EosExceptionU4_Data
	_io *kaitai.Stream
	_root *EosExceptionU4
	_parent interface{}
	_raw_Envelope []byte
}

func (this *EosExceptionU4) Read(io *kaitai.Stream, parent interface{}, root *EosExceptionU4) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(6))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this._raw_Envelope = tmp1
	_io__raw_Envelope := kaitai.NewStream(bytes.NewReader(this._raw_Envelope))
	tmp2 := new(EosExceptionU4_Data)
	err = tmp2.Read(_io__raw_Envelope, this, this._root)
	if err != nil {
		return err
	}
	this.Envelope = tmp2
	return err
}
type EosExceptionU4_Data struct {
	Prebuf []byte
	FailInt uint32
	_io *kaitai.Stream
	_root *EosExceptionU4
	_parent *EosExceptionU4
}

func (this *EosExceptionU4_Data) Read(io *kaitai.Stream, parent *EosExceptionU4, root *EosExceptionU4) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytes(int(3))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this.Prebuf = tmp3
	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.FailInt = uint32(tmp4)
	return err
}
