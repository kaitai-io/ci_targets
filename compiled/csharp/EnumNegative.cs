// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumNegative : KaitaiStruct
    {
        public static EnumNegative FromFile(string fileName)
        {
            return new EnumNegative(new KaitaiStream(fileName));
        }

        public enum Constants
        {
            NegativeOne = -1,
            PositiveOne = 1,
        }

        public EnumNegative(KaitaiStream io, KaitaiStruct parent = null, EnumNegative root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _f1 = ((Constants) m_io.ReadS1());
            _f2 = ((Constants) m_io.ReadS1());
            }
        private Constants _f1;
        private Constants _f2;
        private EnumNegative m_root;
        private KaitaiStruct m_parent;
        public Constants F1 { get { return _f1; } }
        public Constants F2 { get { return _f2; } }
        public EnumNegative M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
