// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class SwitchIntegers2 extends KaitaiStruct.ReadWrite {
    public static SwitchIntegers2 fromFile(String fileName) throws IOException {
        return new SwitchIntegers2(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchIntegers2() {
        this(null, null, null);
    }

    public SwitchIntegers2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchIntegers2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchIntegers2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchIntegers2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.code = this._io.readU1();
        switch (code()) {
        case 1: {
            this.len = ((Number) (this._io.readU1())).longValue();
            break;
        }
        case 2: {
            this.len = ((Number) (this._io.readU2le())).longValue();
            break;
        }
        case 4: {
            this.len = ((Number) (this._io.readU4le())).longValue();
            break;
        }
        case 8: {
            this.len = this._io.readU8le();
            break;
        }
        }
        this.ham = this._io.readBytes(len());
        if (len() > 3) {
            this.padding = this._io.readU1();
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        switch (code()) {
        case 1: {
            break;
        }
        case 2: {
            break;
        }
        case 4: {
            break;
        }
        case 8: {
            break;
        }
        }
        if (len() > 3) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.code);
        switch (code()) {
        case 1: {
            this._io.writeU1(((Number) (this.len)).intValue());
            break;
        }
        case 2: {
            this._io.writeU2le(((Number) (this.len)).intValue());
            break;
        }
        case 4: {
            this._io.writeU4le(((Number) (this.len)).longValue());
            break;
        }
        case 8: {
            this._io.writeU8le(this.len);
            break;
        }
        }
        this._io.writeBytes(this.ham);
        if (len() > 3) {
            this._io.writeU1(this.padding);
        }
    }

    public void _check() {
        switch (code()) {
        case 1: {
            break;
        }
        case 2: {
            break;
        }
        case 4: {
            break;
        }
        case 8: {
            break;
        }
        }
        if (this.ham.length != len())
            throw new ConsistencyError("ham", this.ham.length, len());
        if (len() > 3) {
        }
        _dirty = false;
    }
    private String lenModStr;
    public String lenModStr() {
        if (this.lenModStr != null)
            return this.lenModStr;
        this.lenModStr = Long.toString(len() * 2 - 1);
        return this.lenModStr;
    }
    public void _invalidateLenModStr() { this.lenModStr = null; }
    private int code;
    private Long len;
    private byte[] ham;
    private Integer padding;
    private SwitchIntegers2 _root;
    private KaitaiStruct.ReadWrite _parent;
    public int code() { return code; }
    public void setCode(int _v) { _dirty = true; code = _v; }
    public Long len() { return len; }
    public void setLen(Long _v) { _dirty = true; len = _v; }
    public byte[] ham() { return ham; }
    public void setHam(byte[] _v) { _dirty = true; ham = _v; }
    public Integer padding() { return padding; }
    public void setPadding(Integer _v) { _dirty = true; padding = _v; }
    public SwitchIntegers2 _root() { return _root; }
    public void set_root(SwitchIntegers2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
