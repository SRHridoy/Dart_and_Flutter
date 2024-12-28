import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';

class UpdatesTab extends StatelessWidget {
  UpdatesTab({super.key});

  List<Map<String, dynamic>> status = [
    {
      'name': 'Md. Moniruzzaman Munna',
      'time': '12 minutes ago',
      'image':
          'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-1/467749524_2060246727742638_4720835967437211702_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=106&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeHBmiIh8BajxMY_EhogoM4H5A2deECi2DDkDZ14QKLYMJS-sqJ1ZCuDgN2og-bbKzgCvYtRO3wRx9nd7m-AMhC_&_nc_ohc=owQELQS89hkQ7kNvgF3F2fw&_nc_zt=24&_nc_ht=scontent.fdac174-1.fna&_nc_gid=A2sLWB8QDtxCOBzV-pgr_A-&oh=00_AYBS-kYLKvMvw2D0Xq7g_JhNL3krmoyLdUY9kvhYJvn0gg&oe=67760601',
      'seen': true
    },
    {
      'name': 'Ashikur Rahman',
      'time': '10 minutes ago',
      'image':
          'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-6/440445803_746455527659875_3255624125516805629_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGGrRgNCE3nrzEM4L_C14Ih8rFeQRlqbFfysV5BGWpsV7FFzt8vqr-Bo6BM2RfQPmLLWvMMz_Gobjcf89hibfId&_nc_ohc=OO-V07FRvgMQ7kNvgGymYqf&_nc_zt=23&_nc_ht=scontent.fdac174-1.fna&_nc_gid=AU9BLE0gkd5RMyl0J1kAKWq&oh=00_AYAFxIJCs6aCEtUfSfhfvDv24qc9WZVLukVRFct2MtSknA&oe=67761042',
      'seen': false
    },
    {
      'name': 'Obaydullah Al-Mahdy',
      'time': '8 minutes ago',
      'image':
          'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-1/457377388_476008088640390_3346011999048198570_n.jpg?stp=c71.0.191.191a_dst-jpg_p240x240_tt6&_nc_cat=107&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeHcEJltTdgtN-HwKba4jqZHEYdqHWutNysRh2oda603K02a5huDgx4IOOouvwjJ_NBmf82f0d1SRiRJEe_WLkh-&_nc_ohc=PS8T-khVjSMQ7kNvgEY5fcG&_nc_zt=24&_nc_ht=scontent.fdac174-1.fna&_nc_gid=AkuuG5TmMHhhM3wFG7383Sg&oh=00_AYD53HEWLcnmGdu_QZqKWr1jH8VN_z-uzEChXm54zBUzKw&oe=67760411',
      'seen': false
    },
    {
      'name': 'TAMIM',
      'time': '5 minutes ago',
      'image':
          'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-6/470582305_122181170090102665_8429678029827608075_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHc9KbbOGI8pqc24NPrO9egfnlh7Cp1V5F-eWHsKnVXkQEqyWk-_wsUC6nOrKxyRwKO4Nq9Kfh5RNCBHmRpmPfT&_nc_ohc=4FlV7x-WE4sQ7kNvgEOmh5X&_nc_zt=23&_nc_ht=scontent.fdac174-1.fna&_nc_gid=A9eFXN0vNXaLNOQkrkzUQxk&oh=00_AYCmAdp852PjXj-5AHG5SKRMNmFzakl81aIaAYXr2FNxOA&oe=67760583',
      'seen': true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Status'),
          SizedBox(
            height: 5,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-1/404717934_2146094649076769_5586148604595201891_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeEN7vB_qEeLyuhdDmq_l3xs79y82i36K4fv3LzaLforhyBwQwnEX7pDuXBLDxt7-SDqKNlz0ikxYOnuUrfpR9-Y&_nc_ohc=6-M2NS1JsN0Q7kNvgH1zp7A&_nc_zt=24&_nc_ht=scontent.fdac174-1.fna&_nc_gid=Az-x1u1rdC7kiu403KRwxGe&oh=00_AYDban75QEPo8rZSbaP0hQiV7Xu4M_IOELVaQHRANbCNsA&oe=6775E413'),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            title: Text(
              'My status',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text('Tap to add status update'),
          ),
          Text('Recent updates'),
          Expanded(
            child: ListView.builder(
              itemCount: status.length,
              itemBuilder: (context, index) {
                var data = status[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: data['seen']==true?Colors.grey:AppColors.primaryColor, width: 2)),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(data['image']),
                    ),
                  ),
                  title: Text(
                    data['name'],
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(data['time']),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
