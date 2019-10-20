// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type FixedContents struct {
	Normal []byte
	HighBit8 []byte
	_io *kaitai.Stream
	_root *FixedContents
	_parent interface{}
}

func (this *FixedContents) Read(io *kaitai.Stream, parent interface{}, root *FixedContents) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(6))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Normal = tmp1
	tmp2, err := this._io.ReadBytes(int(2))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this.HighBit8 = tmp2
	return err
}
