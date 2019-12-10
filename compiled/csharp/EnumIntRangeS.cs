// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumIntRangeS : KaitaiStruct
    {
        public static EnumIntRangeS FromFile(string fileName)
        {
            return new EnumIntRangeS(new KaitaiStream(fileName));
        }


        public enum Constants
        {
            IntMin = -2147483648,
            Zero = 0,
            IntMax = 2147483647,
        }
        public EnumIntRangeS(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumIntRangeS p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _f1 = ((Constants) m_io.ReadS4be());
            _f2 = ((Constants) m_io.ReadS4be());
            _f3 = ((Constants) m_io.ReadS4be());
        }
        private Constants _f1;
        private Constants _f2;
        private Constants _f3;
        private EnumIntRangeS m_root;
        private KaitaiStruct m_parent;
        public Constants F1 { get { return _f1; } }
        public Constants F2 { get { return _f2; } }
        public Constants F3 { get { return _f3; } }
        public EnumIntRangeS M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
