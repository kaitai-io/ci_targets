// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosStruct : KaitaiStruct
    {
        public static RepeatEosStruct FromFile(string fileName)
        {
            return new RepeatEosStruct(new KaitaiStream(fileName));
        }

        public RepeatEosStruct(KaitaiStream io, KaitaiStruct parent = null, RepeatEosStruct root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _chunks = new List<Chunk>();
            while (!m_io.IsEof) {
                _chunks.Add(new Chunk(m_io, this, m_root));
            }
            }
        public partial class Chunk : KaitaiStruct
        {
            public static Chunk FromFile(string fileName)
            {
                return new Chunk(new KaitaiStream(fileName));
            }

            public Chunk(KaitaiStream io, RepeatEosStruct parent = null, RepeatEosStruct root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _offset = m_io.ReadU4le();
                _len = m_io.ReadU4le();
                }
            private uint _offset;
            private uint _len;
            private RepeatEosStruct m_root;
            private RepeatEosStruct m_parent;
            public uint Offset { get { return _offset; } }
            public uint Len { get { return _len; } }
            public RepeatEosStruct M_Root { get { return m_root; } }
            public RepeatEosStruct M_Parent { get { return m_parent; } }
        }
        private List<Chunk> _chunks;
        private RepeatEosStruct m_root;
        private KaitaiStruct m_parent;
        public List<Chunk> Chunks { get { return _chunks; } }
        public RepeatEosStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
