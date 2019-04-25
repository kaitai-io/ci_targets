// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


/**
 * Sample docstring
 * @see "Plain text description of doc ref, page 42"
 * @see <a href="http://www.example.com/some/path/?even_with=query&amp;more=2">Source</a>
 * @see <a href="http://www.example.com/three">Documentation name</a>
 */
type DocstringsDocrefMulti struct {
	_io *kaitai.Stream
	_root *DocstringsDocrefMulti
	_parent interface{}
}

func (this *DocstringsDocrefMulti) Read(io *kaitai.Stream, parent interface{}, root *DocstringsDocrefMulti) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
