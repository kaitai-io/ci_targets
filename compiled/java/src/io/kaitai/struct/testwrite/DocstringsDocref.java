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
    }

    public void _fetchInstances() {
        parseInst();
    }

    public void _write_Seq() {
        _writeParseInst = _toWriteParseInst;
        this._io.writeU1(this.one);
        this._io.writeU1(this.two);
        this._io.writeU1(this.three);
    }

    public void _check() {
    }
    private Boolean foo;

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
    private Integer parseInst;
    private boolean _writeParseInst = false;
    private boolean _toWriteParseInst = true;

    /**
     * @see "Now this is a really
     * long document ref that
     * spans multiple lines.
     * "
     */
    public Integer parseInst() {
        if (_writeParseInst)
            _writeParseInst();
        if (this.parseInst != null)
            return this.parseInst;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.parseInst = this._io.readU1();
        this._io.seek(_pos);
        return this.parseInst;
    }
    public void setParseInst(int _v) { parseInst = _v; }
    public void setParseInst_ToWrite(boolean _v) { _toWriteParseInst = _v; }

    public void _writeParseInst() {
        _writeParseInst = false;
        long _pos = this._io.pos();
        this._io.seek(0);
        this._io.writeU1(this.parseInst);
        this._io.seek(_pos);
    }

    public void _checkParseInst() {
    }
    private int one;
    private int two;
    private int three;
    private DocstringsDocref _root;
    private KaitaiStruct.ReadWrite _parent;

    /**
     * @see "Plain text description of doc ref, page 42"
     */
    public int one() { return one; }
    public void setOne(int _v) { one = _v; }

    /**
     * Both doc and doc-ref are defined
     * @see <a href="http://www.example.com/with/url/again">Source</a>
     */
    public int two() { return two; }
    public void setTwo(int _v) { two = _v; }

    /**
     * @see <a href="http://www.example.com/three">Documentation name</a>
     */
    public int three() { return three; }
    public void setThree(int _v) { three = _v; }
    public DocstringsDocref _root() { return _root; }
    public void set_root(DocstringsDocref _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
