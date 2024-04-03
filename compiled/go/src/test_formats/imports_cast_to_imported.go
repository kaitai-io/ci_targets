// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ImportsCastToImported struct {
	Hw *HelloWorld
	Two *CastToImported
	_io *kaitai.Stream
	_root *ImportsCastToImported
	_parent kaitai.Struct
}
func NewImportsCastToImported() *ImportsCastToImported {
	return &ImportsCastToImported{
	}
}

func (this ImportsCastToImported) IO_() *kaitai.Stream {
	return this._io
}

func (this *ImportsCastToImported) Read(io *kaitai.Stream, parent kaitai.Struct, root *ImportsCastToImported) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewHelloWorld()
	err = tmp1.Read(this._io, nil, nil)
	if err != nil {
		return err
	}
	this.Hw = tmp1
	tmp2 := NewCastToImported(this.Hw)
	err = tmp2.Read(this._io, nil, nil)
	if err != nil {
		return err
	}
	this.Two = tmp2
	return err
}
