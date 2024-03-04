// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ExprFstring0 extends KaitaiStruct {
    public static ExprFstring0 fromFile(String fileName) throws IOException {
        return new ExprFstring0(new ByteBufferKaitaiStream(fileName));
    }

    public ExprFstring0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprFstring0(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprFstring0(KaitaiStream _io, KaitaiStruct _parent, ExprFstring0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.seqStr = new String(this._io.readBytes(5), StandardCharsets.US_ASCII);
        this.seqInt = this._io.readU1();
    }
    private String empty;
    public String empty() {
        if (this.empty != null)
            return this.empty;
        this.empty = "";
        return this.empty;
    }
    private String headAndInt;
    public String headAndInt() {
        if (this.headAndInt != null)
            return this.headAndInt;
        this.headAndInt = "abc=" + Long.toString(seqInt());
        return this.headAndInt;
    }
    private String headAndIntLiteral;
    public String headAndIntLiteral() {
        if (this.headAndIntLiteral != null)
            return this.headAndIntLiteral;
        this.headAndIntLiteral = "abc=" + Long.toString(123);
        return this.headAndIntLiteral;
    }
    private String headAndStr;
    public String headAndStr() {
        if (this.headAndStr != null)
            return this.headAndStr;
        this.headAndStr = "abc=" + seqStr();
        return this.headAndStr;
    }
    private String headAndStrLiteral;
    public String headAndStrLiteral() {
        if (this.headAndStrLiteral != null)
            return this.headAndStrLiteral;
        this.headAndStrLiteral = "abc=" + "foo";
        return this.headAndStrLiteral;
    }
    private String literal;
    public String literal() {
        if (this.literal != null)
            return this.literal;
        this.literal = "abc";
        return this.literal;
    }
    private String literalWithEscapes;
    public String literalWithEscapes() {
        if (this.literalWithEscapes != null)
            return this.literalWithEscapes;
        this.literalWithEscapes = "abc\n\tt";
        return this.literalWithEscapes;
    }
    private String seqStr;
    private int seqInt;
    private ExprFstring0 _root;
    private KaitaiStruct _parent;
    public String seqStr() { return seqStr; }
    public int seqInt() { return seqInt; }
    public ExprFstring0 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
