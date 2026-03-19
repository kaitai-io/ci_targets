// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatEosBitsB4 extends KaitaiStruct {
    public static RepeatEosBitsB4 fromFile(String fileName) throws IOException {
        return new RepeatEosBitsB4(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatEosBitsB4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosBitsB4(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosBitsB4(KaitaiStream _io, KaitaiStruct _parent, RepeatEosBitsB4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.nibbles = new ArrayList<Long>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.nibbles.add(this._io.readBitsIntBe(4));
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.nibbles.size(); i++) {
        }
    }
    public List<Long> nibbles() { return nibbles; }
    public RepeatEosBitsB4 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Long> nibbles;
    private RepeatEosBitsB4 _root;
    private KaitaiStruct _parent;
}
