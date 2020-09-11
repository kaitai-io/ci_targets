// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ValidFailRangeBytes struct {
	Foo []byte
	_io *kaitai.Stream
	_root *ValidFailRangeBytes
	_parent interface{}
}
func NewValidFailRangeBytes() *ValidFailRangeBytes {
	return &ValidFailRangeBytes{
	}
}

func (this *ValidFailRangeBytes) Read(io *kaitai.Stream, parent interface{}, root *ValidFailRangeBytes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(2))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Foo = tmp1
	if !((bytes.Compare(this.Foo, []uint8{72, 64}) >= 0)) {
		return kaitai.NewValidationLessThanError([]uint8{72, 64}, this.Foo, this._io, "/seq/0")
	}
	if !((bytes.Compare(this.Foo, []uint8{79, 126}) <= 0)) {
		return kaitai.NewValidationGreaterThanError([]uint8{79, 126}, this.Foo, this._io, "/seq/0")
	}
	return err
}
