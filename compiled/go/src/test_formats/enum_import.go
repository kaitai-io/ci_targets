// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type EnumImport struct {
	Pet1 Enum0_Animal
	Pet2 EnumDeep_Container1_Container2_Animal
	_io *kaitai.Stream
	_root *EnumImport
	_parent interface{}
}

func (this *EnumImport) Read(io *kaitai.Stream, parent interface{}, root *EnumImport) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet1 = Enum0_Animal(tmp1)
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet2 = EnumDeep_Container1_Container2_Animal(tmp2)
	return err
}
