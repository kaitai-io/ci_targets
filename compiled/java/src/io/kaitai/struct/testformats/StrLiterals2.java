// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class StrLiterals2 extends KaitaiStruct {
    public static StrLiterals2 fromFile(String fileName) throws IOException {
        return new StrLiterals2(new ByteBufferKaitaiStream(fileName));
    }

    public StrLiterals2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrLiterals2(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrLiterals2(KaitaiStream _io, KaitaiStruct _parent, StrLiterals2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
    }
    private String atSign;
    public String atSign() {
        if (this.atSign != null)
            return this.atSign;
        this.atSign = "@foo";
        return this.atSign;
    }
    private String dollar1;
    public String dollar1() {
        if (this.dollar1 != null)
            return this.dollar1;
        this.dollar1 = "$foo";
        return this.dollar1;
    }
    private String dollar2;
    public String dollar2() {
        if (this.dollar2 != null)
            return this.dollar2;
        this.dollar2 = "${foo}";
        return this.dollar2;
    }
    private String hash;
    public String hash() {
        if (this.hash != null)
            return this.hash;
        this.hash = "#{foo}";
        return this.hash;
    }
    private StrLiterals2 _root;
    private KaitaiStruct _parent;
    public StrLiterals2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
