// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class ExprFstring0 extends KaitaiStruct.ReadWrite {
    public static ExprFstring0 fromFile(String fileName) throws IOException {
        return new ExprFstring0(new ByteBufferKaitaiStream(fileName));
    }
    public ExprFstring0() {
        this(null, null, null);
    }

    public ExprFstring0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprFstring0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprFstring0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprFstring0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.seqStr = new String(this._io.readBytes(5), StandardCharsets.US_ASCII);
        this.seqInt = this._io.readU1();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes((this.seqStr).getBytes(Charset.forName("ASCII")));
        this._io.writeU1(this.seqInt);
    }

    public void _check() {
        if ((this.seqStr).getBytes(Charset.forName("ASCII")).length != 5)
            throw new ConsistencyError("seq_str", (this.seqStr).getBytes(Charset.forName("ASCII")).length, 5);
        _dirty = false;
    }
    private String empty;
    public String empty() {
        if (this.empty != null)
            return this.empty;
        this.empty = "";
        return this.empty;
    }
    public void _invalidateEmpty() { this.empty = null; }
    private String headAndInt;
    public String headAndInt() {
        if (this.headAndInt != null)
            return this.headAndInt;
        this.headAndInt = "abc=" + Long.toString(seqInt());
        return this.headAndInt;
    }
    public void _invalidateHeadAndInt() { this.headAndInt = null; }
    private String headAndIntLiteral;
    public String headAndIntLiteral() {
        if (this.headAndIntLiteral != null)
            return this.headAndIntLiteral;
        this.headAndIntLiteral = "abc=" + Long.toString(123);
        return this.headAndIntLiteral;
    }
    public void _invalidateHeadAndIntLiteral() { this.headAndIntLiteral = null; }
    private String headAndStr;
    public String headAndStr() {
        if (this.headAndStr != null)
            return this.headAndStr;
        this.headAndStr = "abc=" + seqStr();
        return this.headAndStr;
    }
    public void _invalidateHeadAndStr() { this.headAndStr = null; }
    private String headAndStrLiteral;
    public String headAndStrLiteral() {
        if (this.headAndStrLiteral != null)
            return this.headAndStrLiteral;
        this.headAndStrLiteral = "abc=" + "foo";
        return this.headAndStrLiteral;
    }
    public void _invalidateHeadAndStrLiteral() { this.headAndStrLiteral = null; }
    private String literal;
    public String literal() {
        if (this.literal != null)
            return this.literal;
        this.literal = "abc";
        return this.literal;
    }
    public void _invalidateLiteral() { this.literal = null; }
    private String literalWithEscapes;
    public String literalWithEscapes() {
        if (this.literalWithEscapes != null)
            return this.literalWithEscapes;
        this.literalWithEscapes = "abc\n\tt";
        return this.literalWithEscapes;
    }
    public void _invalidateLiteralWithEscapes() { this.literalWithEscapes = null; }
    private String seqStr;
    private int seqInt;
    private ExprFstring0 _root;
    private KaitaiStruct.ReadWrite _parent;
    public String seqStr() { return seqStr; }
    public void setSeqStr(String _v) { _dirty = true; seqStr = _v; }
    public int seqInt() { return seqInt; }
    public void setSeqInt(int _v) { _dirty = true; seqInt = _v; }
    public ExprFstring0 _root() { return _root; }
    public void set_root(ExprFstring0 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
