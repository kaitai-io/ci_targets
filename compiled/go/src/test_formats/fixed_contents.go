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

	this.Normal = this._io.ensureFixedContents([]uint8{80, 65, 67, 75, 45, 49});
	this.HighBit8 = this._io.ensureFixedContents([]uint8{255, 255});
	return err
}
