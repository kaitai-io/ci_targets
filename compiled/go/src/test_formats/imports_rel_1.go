// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ImportsRel1 struct {
	One uint8
	Two *Imported1
	_io *kaitai.Stream
	_root *ImportsRel1
	_parent interface{}
}

func (this *ImportsRel1) Read(io *kaitai.Stream, parent interface{}, root *ImportsRel1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = tmp1
	tmp2 := new(Imported1)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Two = tmp2
	return err
}
