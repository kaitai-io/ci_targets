// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class StrLiteralsLatin1 extends KaitaiStruct {
    public static StrLiteralsLatin1 fromFile(String fileName) throws IOException {
        return new StrLiteralsLatin1(new ByteBufferKaitaiStream(fileName));
    }

    public StrLiteralsLatin1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrLiteralsLatin1(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrLiteralsLatin1(KaitaiStream _io, KaitaiStruct _parent, StrLiteralsLatin1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.lenParsed = this._io.readU2le();
        this.parsed = new String(this._io.readBytes(lenParsed()), StandardCharsets.UTF_8);
    }

    public void _fetchInstances() {
    }
    private Boolean parsedEqLiteral;
    public Boolean parsedEqLiteral() {
        if (this.parsedEqLiteral != null)
            return this.parsedEqLiteral;
        this.parsedEqLiteral = parsed().equals("\243");
        return this.parsedEqLiteral;
    }
    private int lenParsed;
    private String parsed;
    private StrLiteralsLatin1 _root;
    private KaitaiStruct _parent;
    public int lenParsed() { return lenParsed; }
    public String parsed() { return parsed; }
    public StrLiteralsLatin1 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
