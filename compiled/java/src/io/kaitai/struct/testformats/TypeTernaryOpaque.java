// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class TypeTernaryOpaque extends KaitaiStruct {
    public static TypeTernaryOpaque fromFile(String fileName) throws IOException {
        return new TypeTernaryOpaque(new ByteBufferKaitaiStream(fileName));
    }

    public TypeTernaryOpaque(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TypeTernaryOpaque(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TypeTernaryOpaque(KaitaiStream _io, KaitaiStruct _parent, TypeTernaryOpaque _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        if (!(isHack())) {
            KaitaiStream _io_difWoHack = this._io.substream(12);
            this.difWoHack = new TermStrz(_io_difWoHack);
        }
        if (isHack()) {
            this._raw__raw_difWithHack = this._io.readBytes(12);
            this._raw_difWithHack = KaitaiStream.processXor(_raw__raw_difWithHack, ((byte) (3)));
            KaitaiStream _io__raw_difWithHack = new ByteBufferKaitaiStream(_raw_difWithHack);
            this.difWithHack = new TermStrz(_io__raw_difWithHack);
        }
    }
    private Boolean isHack;
    public Boolean isHack() {
        if (this.isHack != null)
            return this.isHack;
        boolean _tmp = (boolean) (false);
        this.isHack = _tmp;
        return this.isHack;
    }
    private TermStrz dif;
    public TermStrz dif() {
        if (this.dif != null)
            return this.dif;
        this.dif = (!(isHack()) ? difWoHack() : difWithHack());
        return this.dif;
    }
    private TermStrz difWoHack;
    private TermStrz difWithHack;
    private TypeTernaryOpaque _root;
    private KaitaiStruct _parent;
    private byte[] _raw_difWoHack;
    private byte[] _raw_difWithHack;
    private byte[] _raw__raw_difWithHack;
    public TermStrz difWoHack() { return difWoHack; }
    public TermStrz difWithHack() { return difWithHack; }
    public TypeTernaryOpaque _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_difWoHack() { return _raw_difWoHack; }
    public byte[] _raw_difWithHack() { return _raw_difWithHack; }
    public byte[] _raw__raw_difWithHack() { return _raw__raw_difWithHack; }
}
