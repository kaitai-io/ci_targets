// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ImportsAbsAbs struct {
	One uint8
	Two *ImportedAndAbs
	_io *kaitai.Stream
	_root *ImportsAbsAbs
	_parent kaitai.Struct
}
func NewImportsAbsAbs() *ImportsAbsAbs {
	return &ImportsAbsAbs{
	}
}

func (this ImportsAbsAbs) IO_() *kaitai.Stream {
	return this._io
}

func (this *ImportsAbsAbs) Read(io *kaitai.Stream, parent kaitai.Struct, root *ImportsAbsAbs) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = tmp1
	tmp2 := NewImportedAndAbs()
	err = tmp2.Read(this._io, nil, nil)
	if err != nil {
		return err
	}
	this.Two = tmp2
	return err
}
