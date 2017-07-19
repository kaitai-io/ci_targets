// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class MetaXref : KaitaiStruct
    {
        public static MetaXref FromFile(string fileName)
        {
            return new MetaXref(new KaitaiStream(fileName));
        }

        public MetaXref(KaitaiStream io, KaitaiStruct parent = null, MetaXref root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            }
        private MetaXref m_root;
        private KaitaiStruct m_parent;
        public MetaXref M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
