// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class StrLiteralsLatin1 extends KaitaiStruct.ReadWrite {
    public static StrLiteralsLatin1 fromFile(String fileName) throws IOException {
        return new StrLiteralsLatin1(new ByteBufferKaitaiStream(fileName));
    }
    public StrLiteralsLatin1() {
        this(null, null, null);
    }

    public StrLiteralsLatin1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrLiteralsLatin1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrLiteralsLatin1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrLiteralsLatin1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.lenParsed = this._io.readU2le();
        this.parsed = new String(this._io.readBytes(lenParsed()), StandardCharsets.UTF_8);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU2le(this.lenParsed);
        this._io.writeBytes((this.parsed).getBytes(Charset.forName("UTF-8")));
    }

    public void _check() {
        if ((this.parsed).getBytes(Charset.forName("UTF-8")).length != lenParsed())
            throw new ConsistencyError("parsed", (this.parsed).getBytes(Charset.forName("UTF-8")).length, lenParsed());
        _dirty = false;
    }
    private Boolean parsedEqLiteral;
    public Boolean parsedEqLiteral() {
        if (this.parsedEqLiteral != null)
            return this.parsedEqLiteral;
        this.parsedEqLiteral = parsed().equals("\243");
        return this.parsedEqLiteral;
    }
    public void _invalidateParsedEqLiteral() { this.parsedEqLiteral = null; }
    private int lenParsed;
    private String parsed;
    private StrLiteralsLatin1 _root;
    private KaitaiStruct.ReadWrite _parent;
    public int lenParsed() { return lenParsed; }
    public void setLenParsed(int _v) { _dirty = true; lenParsed = _v; }
    public String parsed() { return parsed; }
    public void setParsed(String _v) { _dirty = true; parsed = _v; }
    public StrLiteralsLatin1 _root() { return _root; }
    public void set_root(StrLiteralsLatin1 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
