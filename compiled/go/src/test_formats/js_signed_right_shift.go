// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type JsSignedRightShift struct {
	_io *kaitai.Stream
	_root *JsSignedRightShift
	_parent interface{}
	_f_shouldBe40000000 bool
	shouldBe40000000 int
	_f_shouldBeA00000 bool
	shouldBeA00000 int
}

func (this *JsSignedRightShift) Read(io *kaitai.Stream, parent interface{}, root *JsSignedRightShift) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *JsSignedRightShift) ShouldBe40000000() (v int, err error) {
	if (this._f_shouldBe40000000) {
		return this.shouldBe40000000, nil
	}
	this.shouldBe40000000 = int((uint32(2147483648) >> 1))
	this._f_shouldBe40000000 = true
	return this.shouldBe40000000, nil
}
func (this *JsSignedRightShift) ShouldBeA00000() (v int, err error) {
	if (this._f_shouldBeA00000) {
		return this.shouldBeA00000, nil
	}
	this.shouldBeA00000 = int((uint32(2684354560) >> 8))
	this._f_shouldBeA00000 = true
	return this.shouldBeA00000, nil
}
