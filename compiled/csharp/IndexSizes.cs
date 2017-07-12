// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class IndexSizes : KaitaiStruct
    {
        public static IndexSizes FromFile(string fileName)
        {
            return new IndexSizes(new KaitaiStream(fileName));
        }

        public IndexSizes(KaitaiStream io, KaitaiStruct parent = null, IndexSizes root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _qty = m_io.ReadU4le();
            _sizes = new List<uint>((int) (Qty));
            for (var i = 0; i < Qty; i++) {
                _sizes.Add(m_io.ReadU4le());
            }
            _bufs = new List<string>((int) (Qty));
            for (var i = 0; i < Qty; i++) {
                _bufs.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(Sizes[i])));
            }
            }
        private uint _qty;
        private List<uint> _sizes;
        private List<string> _bufs;
        private IndexSizes m_root;
        private KaitaiStruct m_parent;
        public uint Qty { get { return _qty; } }
        public List<uint> Sizes { get { return _sizes; } }
        public List<string> Bufs { get { return _bufs; } }
        public IndexSizes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
