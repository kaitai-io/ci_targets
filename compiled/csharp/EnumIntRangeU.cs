// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumIntRangeU : KaitaiStruct
    {
        public static EnumIntRangeU FromFile(string fileName)
        {
            return new EnumIntRangeU(new KaitaiStream(fileName));
        }


        public enum Constants
        {
            Zero = 0,
            IntMax = 4294967295,
        }
        public EnumIntRangeU(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumIntRangeU p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _f1 = ((Constants) m_io.ReadU4be());
            _f2 = ((Constants) m_io.ReadU4be());
        }
        private Constants _f1;
        private Constants _f2;
        private EnumIntRangeU m_root;
        private KaitaiStruct m_parent;
        public Constants F1 { get { return _f1; } }
        public Constants F2 { get { return _f2; } }
        public EnumIntRangeU M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
