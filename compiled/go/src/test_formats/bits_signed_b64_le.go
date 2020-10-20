// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type BitsSignedB64Le struct {
	ANum uint64
	ABit bool
	BNum uint64
	BBit bool
	_io *kaitai.Stream
	_root *BitsSignedB64Le
	_parent interface{}
}
func NewBitsSignedB64Le() *BitsSignedB64Le {
	return &BitsSignedB64Le{
	}
}

func (this *BitsSignedB64Le) Read(io *kaitai.Stream, parent interface{}, root *BitsSignedB64Le) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsIntLe(63)
	if err != nil {
		return err
	}
	this.ANum = tmp1
	tmp2, err := this._io.ReadBitsIntLe(1)
	if err != nil {
		return err
	}
	this.ABit = tmp2 != 0
	tmp3, err := this._io.ReadBitsIntLe(63)
	if err != nil {
		return err
	}
	this.BNum = tmp3
	tmp4, err := this._io.ReadBitsIntLe(1)
	if err != nil {
		return err
	}
	this.BBit = tmp4 != 0
	return err
}
