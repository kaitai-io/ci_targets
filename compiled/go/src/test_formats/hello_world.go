// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type HelloWorld struct {
	One uint8
	_io *kaitai.Stream
	_root *HelloWorld
	_parent kaitai.Struct
}
func NewHelloWorld() *HelloWorld {
	return &HelloWorld{
	}
}

func (this HelloWorld) IO_() *kaitai.Stream {
	return this._io
}

func (this *HelloWorld) Read(io *kaitai.Stream, parent kaitai.Struct, root *HelloWorld) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = tmp1
	return err
}
