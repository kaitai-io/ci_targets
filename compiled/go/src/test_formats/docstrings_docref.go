// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)


/**
 * Another one-liner
 * @see <a href="http://www.example.com/some/path/?even_with=query&amp;more=2">Source</a>
 */
type DocstringsDocref struct {
	One uint8
	Two uint8
	Three uint8
	_io *kaitai.Stream
	_root *DocstringsDocref
	_parent interface{}
	_f_foo bool
	foo bool
	_f_parseInst bool
	parseInst uint8
}

func (this *DocstringsDocref) Read(io *kaitai.Stream, parent interface{}, root *DocstringsDocref) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = tmp1
	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Two = tmp2
	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Three = tmp3
	return err
}

/**
 * @see "Doc ref for instance, a plain one"
 */
func (this *DocstringsDocref) Foo() (v bool, err error) {
	if (this._f_foo) {
		return this.foo, nil
	}
	this.foo = bool(true)
	this._f_foo = true
	return this.foo, nil
}

/**
 * @see "Now this is a really
 * long document ref that
 * spans multiple lines.
 * "
 */
func (this *DocstringsDocref) ParseInst() (v uint8, err error) {
	if (this._f_parseInst) {
		return this.parseInst, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return 0, err
	}
	_, err = this._io.Seek(int64(0), io.SeekStart)
	if err != nil {
		return 0, err
	}
	tmp4, err := this._io.ReadU1()
	if err != nil {
		return 0, err
	}
	this.parseInst = tmp4
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return 0, err
	}
	this._f_parseInst = true
	return this.parseInst, nil
}

/**
 * @see "Plain text description of doc ref, page 42"
 */

/**
 * Both doc and doc-ref are defined
 * @see <a href="http://www.example.com/with/url/again">Source</a>
 */

/**
 * @see <a href="http://www.example.com/three">Documentation name</a>
 */
