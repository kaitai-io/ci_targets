// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ProcessXorValue struct {
	Key uint8
	Buf []byte
	_io *kaitai.Stream
	_root *ProcessXorValue
	_parent kaitai.Struct
	_raw_Buf []byte
}
func NewProcessXorValue() *ProcessXorValue {
	return &ProcessXorValue{
	}
}

func (this ProcessXorValue) IO_() *kaitai.Stream {
	return this._io
}

func (this *ProcessXorValue) Read(io *kaitai.Stream, parent kaitai.Struct, root *ProcessXorValue) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Key = tmp1
	tmp2, err := this._io.ReadBytesFull()
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this._raw_Buf = tmp2
	this.Buf = kaitai.ProcessXOR(this._raw_Buf, []byte{this.Key})
	return err
}
