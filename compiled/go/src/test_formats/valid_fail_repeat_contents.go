// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ValidFailRepeatContents struct {
	Foo [][]byte
	_io *kaitai.Stream
	_root *ValidFailRepeatContents
	_parent kaitai.Struct
}
func NewValidFailRepeatContents() *ValidFailRepeatContents {
	return &ValidFailRepeatContents{
	}
}

func (this ValidFailRepeatContents) IO_() *kaitai.Stream {
	return this._io
}

func (this *ValidFailRepeatContents) Read(io *kaitai.Stream, parent kaitai.Struct, root *ValidFailRepeatContents) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for i := 0;; i++ {
		tmp1, err := this._io.EOF()
		if err != nil {
			return err
		}
		if tmp1 {
			break
		}
		tmp2, err := this._io.ReadBytes(int(4))
		if err != nil {
			return err
		}
		tmp2 = tmp2
		this.Foo = append(this.Foo, tmp2)
		if !(bytes.Equal(this.Foo[i], []uint8{18, 52, 86, 120})) {
			return kaitai.NewValidationNotEqualError([]uint8{18, 52, 86, 120}, this.Foo[i], this._io, "/seq/0")
		}
	}
	return err
}
