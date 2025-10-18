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
            KaitaiStream _io_difWoHack = this._io.substream(1);
            this.difWoHack = new HelloWorld(_io_difWoHack);
        }
        if (isHack()) {
            this._raw__raw_difWithHack = this._io.readBytes(1);
            this._raw_difWithHack = KaitaiStream.processXor(this._raw__raw_difWithHack, ((byte) 3));
            KaitaiStream _io__raw_difWithHack = new ByteBufferKaitaiStream(this._raw_difWithHack);
            this.difWithHack = new HelloWorld(_io__raw_difWithHack);
        }
    }

    public void _fetchInstances() {
        if (!(isHack())) {
            this.difWoHack._fetchInstances();
        }
        if (isHack()) {
            this.difWithHack._fetchInstances();
        }
    }
    public HelloWorld dif() {
        if (this.dif != null)
            return this.dif;
        this.dif = (!(isHack()) ? difWoHack() : difWithHack());
        return this.dif;
    }
    public Boolean isHack() {
        if (this.isHack != null)
            return this.isHack;
        this.isHack = false;
        return this.isHack;
    }
    public HelloWorld difWoHack() { return difWoHack; }
    public HelloWorld difWithHack() { return difWithHack; }
    public TypeTernaryOpaque _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_difWithHack() { return _raw_difWithHack; }
    public byte[] _raw__raw_difWithHack() { return _raw__raw_difWithHack; }
    private HelloWorld dif;
    private Boolean isHack;
    private HelloWorld difWoHack;
    private HelloWorld difWithHack;
    private TypeTernaryOpaque _root;
    private KaitaiStruct _parent;
    private byte[] _raw_difWithHack;
    private byte[] _raw__raw_difWithHack;
}
