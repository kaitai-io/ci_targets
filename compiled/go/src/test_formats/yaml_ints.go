// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type YamlInts struct {
	_io *kaitai.Stream
	_root *YamlInts
	_parent interface{}
	_f_testU4Dec bool
	testU4Dec int
	_f_testU4Hex bool
	testU4Hex int
	_f_testU8Dec bool
	testU8Dec int
	_f_testU8Hex bool
	testU8Hex int
}

func (this *YamlInts) Read(io *kaitai.Stream, parent interface{}, root *YamlInts) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *YamlInts) TestU4Dec() (v int, err error) {
	if (this._f_testU4Dec) {
		return this.testU4Dec, nil
	}
	this.testU4Dec = int(4294967295)
	this._f_testU4Dec = true
	return this.testU4Dec, nil
}
func (this *YamlInts) TestU4Hex() (v int, err error) {
	if (this._f_testU4Hex) {
		return this.testU4Hex, nil
	}
	this.testU4Hex = int(4294967295)
	this._f_testU4Hex = true
	return this.testU4Hex, nil
}
func (this *YamlInts) TestU8Dec() (v int, err error) {
	if (this._f_testU8Dec) {
		return this.testU8Dec, nil
	}
	this.testU8Dec = int(18446744073709551615)
	this._f_testU8Dec = true
	return this.testU8Dec, nil
}
func (this *YamlInts) TestU8Hex() (v int, err error) {
	if (this._f_testU8Hex) {
		return this.testU8Hex, nil
	}
	this.testU8Hex = int(18446744073709551615)
	this._f_testU8Hex = true
	return this.testU8Hex, nil
}
