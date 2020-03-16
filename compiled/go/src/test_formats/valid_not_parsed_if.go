// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidNotParsedIf struct {
	NotParsed uint8
	Parsed uint8
	_io *kaitai.Stream
	_root *ValidNotParsedIf
	_parent interface{}
}

func (this *ValidNotParsedIf) Read(io *kaitai.Stream, parent interface{}, root *ValidNotParsedIf) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	if (false) {
		tmp1, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.NotParsed = tmp1
	}
	if (true) {
		tmp2, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.Parsed = tmp2
	}
	return err
}
