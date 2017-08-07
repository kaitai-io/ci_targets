// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class IndexToParamEos : KaitaiStruct
    {
        public static IndexToParamEos FromFile(string fileName)
        {
            return new IndexToParamEos(new KaitaiStream(fileName));
        }

        public IndexToParamEos(KaitaiStream p__io, KaitaiStruct p__parent = null, IndexToParamEos p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read() {
            _qty = m_io.ReadU4le();
            _sizes = new List<uint>((int) (Qty));
            for (var i = 0; i < Qty; i++) {
                _sizes.Add(m_io.ReadU4le());
            }
            _blocks = new List<Block>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _blocks.Add(new Block(i, m_io, this, m_root));
                    i++;
                }
            }
        }
        public partial class Block : KaitaiStruct
        {
            public Block(int p_idx, KaitaiStream p__io, IndexToParamEos p__parent = null, IndexToParamEos p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _idx = p_idx;
                _read();
            }
            private void _read() {
                _buf = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(M_Root.Sizes[Idx]));
            }
            private string _buf;
            private int _idx;
            private IndexToParamEos m_root;
            private IndexToParamEos m_parent;
            public string Buf { get { return _buf; } }
            public int Idx { get { return _idx; } }
            public IndexToParamEos M_Root { get { return m_root; } }
            public IndexToParamEos M_Parent { get { return m_parent; } }
        }
        private uint _qty;
        private List<uint> _sizes;
        private List<Block> _blocks;
        private IndexToParamEos m_root;
        private KaitaiStruct m_parent;
        public uint Qty { get { return _qty; } }
        public List<uint> Sizes { get { return _sizes; } }
        public List<Block> Blocks { get { return _blocks; } }
        public IndexToParamEos M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
