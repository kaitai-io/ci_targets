// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;


/**
 * Another one-liner
 * @see <a href="http://www.example.com/some/path/?even_with=query&amp;more=2">Source</a>
 */
public class DocstringsDocref extends KaitaiStruct.ReadWrite {
    public static DocstringsDocref fromFile(String fileName) throws IOException {
        return new DocstringsDocref(new ByteBufferKaitaiStream(fileName));
    }
    public DocstringsDocref() {
        this(null, null, null);
    }

    public DocstringsDocref(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DocstringsDocref(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DocstringsDocref(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DocstringsDocref _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        this.two = this._io.readU1();
        this.three = this._io.readU1();
        _dirty = false;
    }

    public void _fetchInstances() {
        parseInst();
        if (this.parseInst != null) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteParseInst = _enabledParseInst;
        this._io.writeU1(this.one);
        this._io.writeU1(this.two);
        this._io.writeU1(this.three);
    }

    public void _check() {
        if (_enabledParseInst) {
        }
        _dirty = false;
    }

    /**
     * @see "Doc ref for instance, a plain one"
     */
    public Boolean foo() {
        if (this.foo != null)
            return this.foo;
        this.foo = true;
        return this.foo;
    }
    public void _invalidateFoo() { this.foo = null; }

    /**
     * @see "Now this is a really
     * long document ref that
     * spans multiple lines.
     * "
     */
    public Integer parseInst() {
        if (_shouldWriteParseInst)
            _writeParseInst();
        if (this.parseInst != null)
            return this.parseInst;
        if (!_enabledParseInst)
            return null;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.parseInst = this._io.readU1();
        this._io.seek(_pos);
        return this.parseInst;
    }
    public void setParseInst(int _v) { _dirty = true; parseInst = _v; }
    public void setParseInst_Enabled(boolean _v) { _dirty = true; _enabledParseInst = _v; }

    private void _writeParseInst() {
        _shouldWriteParseInst = false;
        long _pos = this._io.pos();
        this._io.seek(0);
        this._io.writeU1(this.parseInst);
        this._io.seek(_pos);
    }

    /**
     * @see "Plain text description of doc ref, page 42"
     */
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }

    /**
     * Both doc and doc-ref are defined
     * @see <a href="http://www.example.com/with/url/again">Source</a>
     */
    public int two() { return two; }
    public void setTwo(int _v) { _dirty = true; two = _v; }

    /**
     * @see <a href="http://www.example.com/three">Documentation name</a>
     */
    public int three() { return three; }
    public void setThree(int _v) { _dirty = true; three = _v; }
    public DocstringsDocref _root() { return _root; }
    public void set_root(DocstringsDocref _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Boolean foo;
    private Integer parseInst;
    private boolean _shouldWriteParseInst = false;
    private boolean _enabledParseInst = true;
    private int one;
    private int two;
    private int three;
    private DocstringsDocref _root;
    private KaitaiStruct.ReadWrite _parent;
}
