// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatNStruct : KaitaiStruct
    {
        public static RepeatNStruct FromFile(string fileName)
        {
            return new RepeatNStruct(new KaitaiStream(fileName));
        }

        public RepeatNStruct(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatNStruct p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read() {
            _qty = m_io.ReadU4le();
            _chunks = new List<Chunk>((int) (Qty));
            for (var i = 0; i < Qty; i++) {
                _chunks.Add(new Chunk(m_io, this, m_root));
            }
        }
        public partial class Chunk : KaitaiStruct
        {
            public static Chunk FromFile(string fileName)
            {
                return new Chunk(new KaitaiStream(fileName));
            }

            public Chunk(KaitaiStream p__io, RepeatNStruct p__parent = null, RepeatNStruct p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                _offset = m_io.ReadU4le();
                _len = m_io.ReadU4le();
            }
            private uint _offset;
            private uint _len;
            private RepeatNStruct m_root;
            private RepeatNStruct m_parent;
            public uint Offset { get { return _offset; } }
            public uint Len { get { return _len; } }
            public RepeatNStruct M_Root { get { return m_root; } }
            public RepeatNStruct M_Parent { get { return m_parent; } }
        }
        private uint _qty;
        private List<Chunk> _chunks;
        private RepeatNStruct m_root;
        private KaitaiStruct m_parent;
        public uint Qty { get { return _qty; } }
        public List<Chunk> Chunks { get { return _chunks; } }
        public RepeatNStruct M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
