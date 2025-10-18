// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidNotParsedIf extends KaitaiStruct.ReadWrite {
    public static ValidNotParsedIf fromFile(String fileName) throws IOException {
        return new ValidNotParsedIf(new ByteBufferKaitaiStream(fileName));
    }
    public ValidNotParsedIf() {
        this(null, null, null);
    }

    public ValidNotParsedIf(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidNotParsedIf(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidNotParsedIf(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidNotParsedIf _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        if (false) {
            this.notParsed = this._io.readU1();
            if (!(this.notParsed == 42)) {
                throw new KaitaiStream.ValidationNotEqualError(42, this.notParsed, this._io, "/seq/0");
            }
        }
        if (true) {
            this.parsed = this._io.readU1();
            if (!(this.parsed == 80)) {
                throw new KaitaiStream.ValidationNotEqualError(80, this.parsed, this._io, "/seq/1");
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        if (false) {
        }
        if (true) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        if (false) {
            this._io.writeU1(this.notParsed);
        }
        if (true) {
            this._io.writeU1(this.parsed);
        }
    }

    public void _check() {
        if (false) {
            if (!(this.notParsed == 42)) {
                throw new KaitaiStream.ValidationNotEqualError(42, this.notParsed, null, "/seq/0");
            }
        }
        if (true) {
            if (!(this.parsed == 80)) {
                throw new KaitaiStream.ValidationNotEqualError(80, this.parsed, null, "/seq/1");
            }
        }
        _dirty = false;
    }
    public Integer notParsed() { return notParsed; }
    public void setNotParsed(Integer _v) { _dirty = true; notParsed = _v; }
    public Integer parsed() { return parsed; }
    public void setParsed(Integer _v) { _dirty = true; parsed = _v; }
    public ValidNotParsedIf _root() { return _root; }
    public void set_root(ValidNotParsedIf _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Integer notParsed;
    private Integer parsed;
    private ValidNotParsedIf _root;
    private KaitaiStruct.ReadWrite _parent;
}
