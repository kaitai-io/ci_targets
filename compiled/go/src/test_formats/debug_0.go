// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
type Debug0 struct {
	One uint8
	ArrayOfInts []uint8
	_unnamed2 uint8
	_io *kaitai.Stream
	_root *Debug0
	_parent interface{}
}

func (this *Debug0) Read(io *kaitai.Stream, parent interface{}, root *Debug0) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = tmp1
	this.ArrayOfInts = make([]uint8, 3)
	for i := range this.ArrayOfInts {
		tmp2, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.ArrayOfInts[i] = tmp2
	}
	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this._unnamed2 = tmp3
	return err
}
