// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type EosExceptionBytes struct {
	Envelope *EosExceptionBytes_Data
	_io *kaitai.Stream
	_root *EosExceptionBytes
	_parent interface{}
	_raw_Envelope []byte
}
func NewEosExceptionBytes() *EosExceptionBytes {
	return &EosExceptionBytes{
	}
}

func (this *EosExceptionBytes) Read(io *kaitai.Stream, parent interface{}, root *EosExceptionBytes) (err error) {
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
	tmp2 := NewEosExceptionBytes_Data()
	err = tmp2.Read(_io__raw_Envelope, this, this._root)
	if err != nil {
		return err
	}
	this.Envelope = tmp2
	return err
}
type EosExceptionBytes_Data struct {
	Buf []byte
	_io *kaitai.Stream
	_root *EosExceptionBytes
	_parent *EosExceptionBytes
}
func NewEosExceptionBytes_Data() *EosExceptionBytes_Data {
	return &EosExceptionBytes_Data{
	}
}

func (this *EosExceptionBytes_Data) Read(io *kaitai.Stream, parent *EosExceptionBytes, root *EosExceptionBytes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytes(int(7))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this.Buf = tmp3
	return err
}
