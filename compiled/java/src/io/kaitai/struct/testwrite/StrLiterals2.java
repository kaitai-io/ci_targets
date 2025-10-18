// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class StrLiterals2 extends KaitaiStruct.ReadWrite {
    public static StrLiterals2 fromFile(String fileName) throws IOException {
        return new StrLiterals2(new ByteBufferKaitaiStream(fileName));
    }
    public StrLiterals2() {
        this(null, null, null);
    }

    public StrLiterals2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrLiterals2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrLiterals2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrLiterals2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
    }

    public void _check() {
        _dirty = false;
    }
    public String atSign() {
        if (this.atSign != null)
            return this.atSign;
        this.atSign = "@foo";
        return this.atSign;
    }
    public void _invalidateAtSign() { this.atSign = null; }
    public String dollar1() {
        if (this.dollar1 != null)
            return this.dollar1;
        this.dollar1 = "$foo";
        return this.dollar1;
    }
    public void _invalidateDollar1() { this.dollar1 = null; }
    public String dollar2() {
        if (this.dollar2 != null)
            return this.dollar2;
        this.dollar2 = "${foo}";
        return this.dollar2;
    }
    public void _invalidateDollar2() { this.dollar2 = null; }
    public String hash() {
        if (this.hash != null)
            return this.hash;
        this.hash = "#{foo}";
        return this.hash;
    }
    public void _invalidateHash() { this.hash = null; }
    public StrLiterals2 _root() { return _root; }
    public void set_root(StrLiterals2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private String atSign;
    private String dollar1;
    private String dollar2;
    private String hash;
    private StrLiterals2 _root;
    private KaitaiStruct.ReadWrite _parent;
}
