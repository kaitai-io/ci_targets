// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ParamsPassArrayInt : KaitaiStruct
    {
        public static ParamsPassArrayInt FromFile(string fileName)
        {
            return new ParamsPassArrayInt(new KaitaiStream(fileName));
        }

        public ParamsPassArrayInt(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsPassArrayInt p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_intsCalc = false;
            _read();
        }
        private void _read()
        {
            _ints = new List<ushort>();
            for (var i = 0; i < 3; i++)
            {
                _ints.Add(m_io.ReadU2le());
            }
            _passInts = new WantsInts(Ints, m_io, this, m_root);
            _passIntsCalc = new WantsInts(IntsCalc, m_io, this, m_root);
        }
        public partial class WantsInts : KaitaiStruct
        {
            public WantsInts(List<ushort> p_nums, KaitaiStream p__io, ParamsPassArrayInt p__parent = null, ParamsPassArrayInt p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _nums = p_nums;
                _read();
            }
            private void _read()
            {
            }
            public List<ushort> Nums { get { return _nums; } }
            public ParamsPassArrayInt M_Root { get { return m_root; } }
            public ParamsPassArrayInt M_Parent { get { return m_parent; } }
            private List<ushort> _nums;
            private ParamsPassArrayInt m_root;
            private ParamsPassArrayInt m_parent;
        }
        public List<ushort> IntsCalc
        {
            get
            {
                if (f_intsCalc)
                    return _intsCalc;
                f_intsCalc = true;
                _intsCalc = (List<ushort>) (new List<ushort> { 27643, 7 });
                return _intsCalc;
            }
        }
        public List<ushort> Ints { get { return _ints; } }
        public WantsInts PassInts { get { return _passInts; } }
        public WantsInts PassIntsCalc { get { return _passIntsCalc; } }
        public ParamsPassArrayInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_intsCalc;
        private List<ushort> _intsCalc;
        private List<ushort> _ints;
        private WantsInts _passInts;
        private WantsInts _passIntsCalc;
        private ParamsPassArrayInt m_root;
        private KaitaiStruct m_parent;
    }
}
